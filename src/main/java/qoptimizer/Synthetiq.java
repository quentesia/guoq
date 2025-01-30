package qoptimizer;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Optional;
import java.util.Scanner;
import java.util.stream.Stream;

public class Synthetiq {

    public static String socket(String circuit, int numCircuits, double epsilon, int threads, String targetGateset) {
        try {
            // Specify the URL along with the query parameters
            String urlString = "http://localhost:8080/synthetiq";
            String parameter1 = "circuit";
            String parameter2 = "num_circuits";
            String parameter3 = "epsilon";
            String parameter4 = "threads";
            String parameter5 = "target_gateset";

            Gson gson = new GsonBuilder().create();
            HashMap<String, String> log = new HashMap<>();
            log.put("circuit", circuit);
            log.put("num_circuits", String.valueOf(numCircuits));
            log.put("epsilon", String.valueOf(epsilon));
            log.put("threads", String.valueOf(threads));
            log.put("target_gateset", targetGateset);
            String json = gson.toJson(log);

            // Create URL object
            URL url = new URL(urlString);
            // Open a connection
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            // Set the request method to POST
            conn.setRequestMethod("POST");

            // Set the request headers
            conn.setRequestProperty("Content-Type", "application/json; utf-8");
            conn.setRequestProperty("Accept", "application/json");
            byte[] input = json.getBytes(StandardCharsets.UTF_8);
            conn.setRequestProperty("Content-Length", Integer.toString(input.length));

            // Enable input and output streams
            conn.setDoOutput(true);

            // Write the JSON data to the output stream
            try (OutputStream os = conn.getOutputStream()) {
                os.write(input, 0, input.length);
            }

            // Get the response code
            int responseCode = conn.getResponseCode();
            if (responseCode != 200) {
                System.out.println(responseCode);
                System.out.println(conn.getResponseMessage());
                return circuit;
            }

            StringBuilder response = new StringBuilder();
            // Read the response from input stream
            try (BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), StandardCharsets.UTF_8))) {
                String responseLine;
                while ((responseLine = br.readLine()) != null) {
                    response.append(responseLine.trim());
                }

            }
            conn.disconnect();

            return response.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return circuit;
        }
    }

    public static String disk(String circuit, double epsilon) throws IOException, InterruptedException {
        try {
            FileWriter myWriter = new FileWriter("lib/synthetiq/data/input/circ.qasm");
            myWriter.write(circuit);
            myWriter.close();
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }

        String[] commands = {"./bin/main", "circ.qasm", "-c", "1", "-eps", String.valueOf(epsilon)};
        ProcessBuilder pb = new ProcessBuilder(commands);
        pb.directory(new File("lib/synthetiq"));
        Process pr = pb.start();
        pr.waitFor();
        try {
            Stream<Path> stream = Files.list(Paths.get("lib/synthetiq/data/output/circ"));
            Optional<Path> first = stream.findFirst();
            File myObj = new File(first.get().toUri());
            Scanner myReader = new Scanner(myObj);
            String output = "";
            while (myReader.hasNextLine()) {
                output = output.concat(myReader.nextLine());
            }
            myReader.close();
            return output;
        } catch (FileNotFoundException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        } finally {
            File in = new File("lib/synthetiq/data/input/circ.qasm");
            File out = new File("lib/synthetiq/data/output/circ");
            in.delete();
            deleteDirectory(out);
        }

        return null;
    }

    private static void deleteDirectory(File directoryToBeDeleted) {
        File[] allContents = directoryToBeDeleted.listFiles();
        if (allContents != null) {
            for (File file : allContents) {
                deleteDirectory(file);
            }
        }
        directoryToBeDeleted.delete();
    }

    public static void main(String[] args) throws IOException, InterruptedException {
        long time1 = System.currentTimeMillis();
        String circ = "OPENQASM 2.0;\n" +
                "include \"qelib1.inc\";\n" +
                "qreg q[5];\n" +
                "t q[3];\n" +
                "t q[3];\n" +
                "tdg q[4];\n" +
                "cx q[1], q[4];";
        for (int i = 0; i < 1; i++) {
            System.out.println(disk(circ, 1e-8));
        }
        long time2 = System.currentTimeMillis();
        System.out.println((time2 - time1) / 1000);
    }
}
