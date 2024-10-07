import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "",
            authDomain: "rays-1cbba.firebaseapp.com",
            projectId: "rays-1cbba",
            storageBucket: "rays-1cbba.appspot.com",
            messagingSenderId: "3941707142",
            appId: "1:3941707142:web:6c47fba9294b2641fb1007",
            measurementId: "G-SNYGT6WEPK"));
  } else {
    await Firebase.initializeApp();
  }
}
