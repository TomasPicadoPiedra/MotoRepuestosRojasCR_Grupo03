import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDGoM_jpreUFwa3CU4qhME2e995GHkMutM",
            authDomain: "motorepuestosrojasapp.firebaseapp.com",
            projectId: "motorepuestosrojasapp",
            storageBucket: "motorepuestosrojasapp.firebasestorage.app",
            messagingSenderId: "667665286876",
            appId: "1:667665286876:web:65a91cae3b6c7a04a2d619",
            measurementId: "G-94R2C6S73E"));
  } else {
    await Firebase.initializeApp();
  }
}
