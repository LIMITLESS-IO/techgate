import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:techgate/Screens/Welcome/welcome_screen.dart';
import 'package:techgate/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
