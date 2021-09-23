import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techgate/Screens/Login/login_screen.dart';
import 'package:techgate/Screens/Welcome/components/background.dart';
import 'package:techgate/components/roundedbutton.dart';
import 'package:techgate/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provides total height and width of the screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              width: size.width * 0.7,
              child: Text(
                "Welcome to Tech Gate JU ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: size.width / (size.width * 0.05),
                  fontFamily: 'advent',
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            SvgPicture.asset(
              "assets/icons/rise.svg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
