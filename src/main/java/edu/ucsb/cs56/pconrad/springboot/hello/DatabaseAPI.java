package edu.ucsb.cs56.pconrad.springboot.hello;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
import java.io.FileInputStream;

import com.google.auth.oauth2.GoogleCredentials;
import com.google.firebase.FirebaseApp;
import com.google.firebase.FirebaseOptions;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

public class DatabaseAPI {
    private static boolean initialized;

    static {
        initialized = false;
    }

    // constructor
    private DatabaseAPI() {
        // private
    }

    // initialize database
    public static void initialize() {
        if (initialized) {
            return;
        }
        DatabaseAPI.initialized = true;
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
        final List<SampleUser> list = new ArrayList<>();

        final FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference ref = database.getReference("sample");
        DatabaseReference usersRef = ref.child("users");
        /*ValueEventListener vel = */usersRef.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                list.add(dataSnapshot.getValue(SampleUser.class));
            }
            @Override
            public void onCancelled(DatabaseError databaseError) {
                System.out.println("The read failed: " + databaseError.getCode());
            }
        });
        System.out.println(list);
        return "result";
    }

    // DEBUG
    // demo: save data to the database
    public static void saveDataDemo() {
        final FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference ref = database.getReference("sample");
        DatabaseReference usersRef = ref.child("users");

        Map<String, SampleUser> users = new HashMap<>();
        users.put("alanisawesome", new SampleUser("Alan Turing", "June 23, 1912"));
        users.put("gracehop", new SampleUser("Grace Hopper", "December 9, 1906"));
        users.put("cs56prof", new SampleUser("Phil Conrad", "???"));

        usersRef.setValueAsync(users);
    }

}
