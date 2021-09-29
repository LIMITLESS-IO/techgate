import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techgate/Screens/SignUpInfo/components/background.dart';
import 'package:techgate/components/rounded_input_field.dart';
import 'package:techgate/components/roundedbutton.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstname = TextEditingController();
    TextEditingController surname = TextEditingController();
    TextEditingController agecontroller = TextEditingController();

    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          SvgPicture.asset(
            "assets/icons/info.svg",
            height: size.height * 0.3,
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          RoundedInputField(
            icon: Icons.perm_identity,
            hintText: "First Name",
            onChanged: (value) {},
            inputcontroller: firstname,
          ),
          SizedBox(
            height: 20,
          ),
          RoundedInputField(
            icon: Icons.perm_identity,
            hintText: "Last Name",
            onChanged: (value) {},
            inputcontroller: surname,
          ),
          SizedBox(
            height: 20,
          ),
          RoundedInputField(
              hintText: "Age",
              icon: Icons.perm_identity,
              onChanged: (value) {},
              inputcontroller: agecontroller),
          SizedBox(
            height: 30,
          ),
          RoundedButton(text: "Confirm", press: () {})
        ],
      ),
    );
  }
}
