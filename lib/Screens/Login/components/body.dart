import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techgate/Screens/Login/components/background.dart';
import 'package:techgate/Screens/Signup/signup_screen.dart';
import 'package:techgate/components/has_an_account.dart';
import 'package:techgate/components/rounded_email_field.dart';
import 'package:techgate/components/rounded_password_field.dart';
import 'package:techgate/components/roundedbutton.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.1,
            ),
            SvgPicture.asset(
              "assets/icons/auth.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: 20,
            ),
            RoundedEmailField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(
              height: 20,
            ),
            HasAnAccount(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
