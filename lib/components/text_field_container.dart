import 'package:flutter/material.dart';
import 'package:techgate/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double fieldwidth;
    if (size.width > 450) {
      fieldwidth = 450;
    } else {
      fieldwidth = size.width * 0.8;
    }
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: fieldwidth,
      decoration: (BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29))),
      child: child,
    );
  }
}
