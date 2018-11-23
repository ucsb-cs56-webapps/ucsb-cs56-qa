package edu.ucsb.cs56.pconrad.springboot.hello;

import java.util.Map;
import java.util.HashMap;
import java.io.FileInputStream;

import com.google.firebase.database.DatabaseReference;
import com.google.firebase.FirebaseApp;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.FirebaseOptions;
import com.google.auth.oauth2.GoogleCredentials;

public class DatabaseAPI {

    // constructor
    private DatabaseAPI() {
        // private
    }

    // initialize database
    public static void initialize() {
        try {
            FileInputStream serviceAccount =
             new FileInputStream("src/main/java/edu/ucsb/cs56/pconrad/springboot/hello/experimental-prj-firebase-adminsdk-9tti7-d4a8c2055b.json");

             FirebaseOptions options = new FirebaseOptions.Builder()
              .setCredentials(GoogleCredentials.fromStream(serviceAccount))
              .setDatabaseUrl("https://experimental-prj.firebaseio.com")
              .build();

             FirebaseApp.initializeApp(options);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // use FirebaseDatabase.getInstance() to get access to the database
    }

    // demo: read data from the database
    public static String readDataDemo() {
        final FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference ref = database.getReference("recent");
        return "";
    }

    // demo: save data to the database
    public static void saveDataDemo() {
        final FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference ref = database.getReference("sample");
        DatabaseReference usersRef = ref.child("users");

        Map<String, String> users = new HashMap<>();
        users.put("alanisawesome", "Alan Turing: June 23, 1912");
        users.put("gracehop", "Grace Hopper: December 9, 1906");

        usersRef.setValueAsync(users);
    }

}
