package qoptimizer;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;

public class Pyzx {

    public static String socket(String circuit) {
        try {
            String urlString = "http://localhost:8080/pyzx";
            Gson gson = new GsonBuilder().create();
            HashMap<String, String> log = new HashMap<>();
            log.put("circuit", circuit);
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
//            System.out.println("POST Response Code :: " + responseCode);

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
}
