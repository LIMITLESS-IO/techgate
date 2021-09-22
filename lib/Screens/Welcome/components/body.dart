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
            as you can see the site is still under development
            it will be a platform where students can help each other learn about tech
            and also a place to communicate with other geeks 
            hoping that it'd make your college life memorable and benificial
            until then, take care, and keep seeking knowledge




            
            ''',
            textAlign: TextAlign.center,
            maxLines: 15,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: size.width / (size.width * 0.05),
              fontFamily: 'advent',
            ),
          ),
          SvgPicture.asset(
            "assets/icons/rise.svg",
            height: size.height * 0.4,
          ),
        ],
      ),
    );
  }
}
