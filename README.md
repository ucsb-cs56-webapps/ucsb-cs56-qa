# Q&A Webapp

# Fall 2018
* Raul: rosterz
* Kevin: tgwang1023
* Ken: ChangweiXu
* Jacob: jacobazamora
* Jonathan: jxu495
* Laura: yifanyu123

The main idea of the QA app is to provide UCSB students with a new form of asking questions around UCSB. The QA app will
allow students to submit questions so that other students who are (geographically) near by have to oppurtunity to answer their questions
and earn points.

Link to Website: https://ucsb-cs56-qa.herokuapp.com/


# How to set up connection to Firebase from your Webapp

1. Go to [Firebase Console](https://console.firebase.google.com/) and set up a new project.
2. Select the new project and go to "Project Settings" -> "Service Accounts" -> "Firebase Admin SDK", copy the Java version of Admin SDK configuration snippet, and click "Generate new private key".
3. Rename the downloaded .json file to `firebase-auth.json` and move it to `src/main/resource/static/auth/` directory.
4. Modify `static` field in `DatabaseAPI.java` with copied contents:
```
// You can copy these code
    private static final String authFileName = "target/classes/static/auth/firebase-auth.json";

    // initialize database access
    static {
        try {
            FileInputStream serviceAccount =
                    new FileInputStream(DatabaseAPI.authFileName);

            FirebaseOptions options = new FirebaseOptions.Builder()
              .setCredentials(GoogleCredentials.fromStream(serviceAccount))
              .setDatabaseUrl("<Your database address provided by firebase>")
              .build();

            FirebaseApp.initializeApp(options);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
```
5. Save the change and now you can use `mvn spring-boot:run` to test the webapp in `http://localhost:8080/`.

**WARNING: Keep your private key safe and NEVER expose it to the public.**
# F18 Final Remarks
The code uses MVN, Spring-Boot, and Heroku to deploy a website. In the templates folder you will find all the ftl files used to customize the website. In the java file we have all java classes that contain the back-end code which controls the functionalities of the app. The css files are used to provide extra customizations to the FTL files. The pom file contains all the dpendencies. 

Features that should be added to the webapp is location services, google Oauth, question tags, and making the webapp mobile friendly. Currently if you try opening the website on your phone you will be welcomed with overlapping images that block the login, this should be resolved. Question tags would help filter different types of questions on the question list. Google Oauth would provide an alternative way to login into the app. Location services will be used to make specific question page based on a certain area.

Potential bugs include the question interface when submitting questions. This may need to be refactored. Advice: revamp the backend and if very ambitious make a mobile port of the project. Good luck.
