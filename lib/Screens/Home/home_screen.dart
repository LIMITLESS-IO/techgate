import 'package:flutter/material.dart';
import 'package:techgate/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: SizedBox(
          width: size.width * 0.7,
          child: Text(
            "Congrats, you made it to the home page, we have nothing here for now, but this site is still under development so stay hyped",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: size.width / (size.width * 0.05),
            ),
          ),
        ),
      ),
    );
  }
}
