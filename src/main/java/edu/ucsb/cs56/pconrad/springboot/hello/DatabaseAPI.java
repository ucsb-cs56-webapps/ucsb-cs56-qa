package edu.ucsb.cs56.pconrad.springboot.hello;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;
// import java.util.concurrent.TimeUnit;
import java.util.concurrent.CountDownLatch;
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
    // initialize database access
    static {
        try {
            FileInputStream serviceAccount =
                    new FileInputStream("experimental-prj-firebase-adminsdk-9tti7-d4a8c2055b.json");

            FirebaseOptions options = new FirebaseOptions.Builder()
                    .setCredentials(GoogleCredentials.fromStream(serviceAccount))
                    .setDatabaseUrl("https://experimental-prj.firebaseio.com")
                    .build();

            FirebaseApp.initializeApp(options);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // constructor is disabled
    private DatabaseAPI() {
        // private
    }

    // readData()
    public static void readData(String path, List<SampleUser> list) {
        final FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference ref = database.getReference(path);
        CountDownLatch doneSignal = new CountDownLatch(1);

        System.out.println("Before read");
        ref.addListenerForSingleValueEvent(new ValueEventListener() {
            @Override
            public void onDataChange(DataSnapshot dataSnapshot) {
                // System.out.println(dataSnapshot);
                for (DataSnapshot child : dataSnapshot.getChildren()) {
                    SampleUser su = child.getValue(SampleUser.class);
                    // System.out.println(su);
                    list.add(su);
                }
                doneSignal.countDown();
            }
            @Override
            public void onCancelled(DatabaseError databaseError) {
                System.out.println("The read failed: " + databaseError.getCode());
                doneSignal.countDown();
            }
        });
        System.out.println("End read");
        System.out.println("Begin wait");
        try {
            doneSignal.await();
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
        System.out.println("End wait");
        System.out.println(list);
    }

    // DEBUG
    // demo: read data from the database
    public static void readDataDemo() {
        final List<SampleUser> list = new ArrayList<>();
        String path = "sample/users";
        System.out.println("Before call");

        DatabaseAPI.readData(path, list);

        System.out.println("End call");
    }

    // DEBUG
    // demo: save data to the database
    public static void saveDataDemo() {
        final FirebaseDatabase database = FirebaseDatabase.getInstance();
        DatabaseReference ref = database.getReference("sample");
        DatabaseReference usersRef = ref.child("users");

        usersRef.child("alanisawesome").setValueAsync(new SampleUser("Alan Turing", "aturing@ucsb.edu"));
        usersRef.child("gracehop").setValueAsync(new SampleUser("Grace Hopper", "ghopper@ucsb.edu"));
        usersRef.child("test00").setValueAsync(new SampleUser("Test Object 00", "test00@ucsb.edu"));
    }

}
