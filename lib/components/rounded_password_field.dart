import 'package:flutter/material.dart';
import 'package:techgate/components/text_field_container.dart';
import 'package:techgate/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final TextEditingController passwdcontroller;
  final ValueChanged<String> onChanged;
  RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.passwdcontroller,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  @override
  bool isHiddenPasswd = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.passwdcontroller,
        onChanged: widget.onChanged,
        obscureText: isHiddenPasswd,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: InkWell(
            onTap: TogglePasswd,
            child: Icon(
              isHiddenPasswd ? Icons.visibility : Icons.visibility_off,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }

  void TogglePasswd() {
    setState(() {
      isHiddenPasswd = !isHiddenPasswd;
    });
  }
}
