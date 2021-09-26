import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:techgate/Screens/Welcome/welcome_screen.dart';
import 'package:techgate/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        return MaterialApp(
          title: "TechGate WelcomePage",
          theme: ThemeData(
              primaryColor: kPrimaryColor,
              scaffoldBackgroundColor: Colors.white),
          home: WelcomeScreen(),
        );
      },
    );
  }
}
