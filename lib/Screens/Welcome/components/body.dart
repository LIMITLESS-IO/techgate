import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techgate/Screens/Welcome/components/background.dart';
import 'package:techgate/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //provides total height and width of the screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '''Welcome to Tech Gate JU
            




            
            ''',
            textAlign: TextAlign.center,
            maxLines: 15,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: size.width / (size.width * 0.06),
              fontFamily: 'advent',
            ),
          ),
          SvgPicture.asset(
            "assets/icons/rise.svg",
            height: size.height * 0.4,
          )
        ],
      ),
    );
  }
}
