import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techgate/components/social_icon.dart';
import 'package:techgate/Screens/Login/login_screen.dart';
import 'package:techgate/Screens/Signup/components/background.dart';
import 'package:techgate/components/auth_service.dart';
import 'package:techgate/components/has_an_account.dart';
import 'package:techgate/components/rounded_email_field.dart';
import 'package:techgate/components/rounded_password_field.dart';
import 'package:techgate/components/roundedbutton.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcontroller = TextEditingController();
    TextEditingController passwdcontroller = TextEditingController();
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
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedEmailField(
              hintText: "Your Email",
              onChanged: (value) {},
              emailcontroller: emailcontroller,
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              passwdcontroller: passwdcontroller,
            ),
            RoundedButton(
                text: "SIGNUP",
                press: () {
                  AuthService(FirebaseAuth.instance).signUp(
                      email: emailcontroller.text,
                      passwd: passwdcontroller.text);
                }),
            SizedBox(
              height: 20,
            ),
            HasAnAccount(
              login: false,
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
            SizedBox(
              height: 20,
            ),
            OrDriver(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  IconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcon(
                  IconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
                SocialIcon(
                  IconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
