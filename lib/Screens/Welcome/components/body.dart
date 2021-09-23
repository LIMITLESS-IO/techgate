import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            Spacer(),
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
            Spacer(),
            SvgPicture.asset(
              "assets/icons/rise.svg",
              height: size.height * 0.4,
            ),
            Spacer(),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
