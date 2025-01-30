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
import java.util.HashMap;
import java.util.Scanner;

public class Bqskit {

    public static String socket(String circuit, int optLevel, double epsilon, String targetGateset) {
        try {
            // Specify the URL along with the query parameters
            String urlString = "http://localhost:8080/bqskit";

            Gson gson = new GsonBuilder().create();
            HashMap<String, String> log = new HashMap<>();
            log.put("circuit", circuit);
            log.put("opt_level", String.valueOf(optLevel));
            log.put("epsilon", String.valueOf(epsilon));
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

    public static String io(String circuit, int optLevel, float epsilon) throws IOException {
        Runtime rt = Runtime.getRuntime();
        String[] commands = {"python", "resynth.py", "-q", circuit, "-o", String.valueOf(optLevel), "-e", String.valueOf(epsilon)};
        Process proc = rt.exec(commands);

        BufferedReader stdInput = new BufferedReader(new
                InputStreamReader(proc.getInputStream()));

        String s;
        String output = "";
        while ((s = stdInput.readLine()) != null) {
            output = output.concat(s);
        }

        return output;
    }

    public static String disk(String circuit, int optLevel, float epsilon) throws IOException, InterruptedException {
        try {
            FileWriter myWriter = new FileWriter("circ.qasm");
            myWriter.write(circuit);
            myWriter.close();
        } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
        }

        Runtime rt = Runtime.getRuntime();
        String[] commands = {"python", "resynth.py", "-q", circuit, "-o", String.valueOf(optLevel), "-e", String.valueOf(epsilon)};
        Process proc = rt.exec(commands);
        proc.waitFor();
        try {
            File myObj = new File("new_circ.qasm");
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
        }

        return null;
    }

    public static void main(String[] args) throws IOException, InterruptedException {
        long time1 = System.currentTimeMillis();
        String circ = "OPENQASM 2.0;\n" +
                "include \"qelib1.inc\";\n" +
                "qreg q[5];\n" +
                "u2(0,pi) q[3];\n" +
                "u2(0,pi) q[4];\n" +
                "cx q[1], q[4];";
        for (int i = 0; i < 10; i++) {
//            socket(circ, 3, 0); // 36 seconds
//            io(circ, 3, 0); // 43 seconds
//            disk(circ, 3, 0); // 52 seconds
        }
        long time2 = System.currentTimeMillis();
        System.out.println((time2 - time1) / 1000);
    }
}
