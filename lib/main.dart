import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:techgate/Screens/Welcome/welcome_screen.dart';
import 'package:techgate/constants.dart';
import 'package:firebase/firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initializeApp(
  //     apiKey: "AIzaSyBHssw5ES6dxT0bg2-WN_xu-nu1RpPO3Is",
  //     authDomain: "techgateju.firebaseapp.com",
  //     databaseURL:
  //         "https://techgateju-default-rtdb.europe-west1.firebasedatabase.app",
  //     projectId: "techgateju",
  //     storageBucket: "techgateju.appspot.com",
  //     messagingSenderId: "935506698832",
  //     appId: "1:935506698832:web:bfb207d2259681fcb8e755",
  //     measurementId: "G-13FN4XR1NN");
  Firebase.initializeApp();
  runApp(TechGate());
}

class TechGate extends StatelessWidget {
  const TechGate({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TechGate LogIn',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
