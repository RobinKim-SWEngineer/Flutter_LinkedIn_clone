import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedin_clone/constants.dart';

const STAR_LOGO = 'assets/icons/verified_logo.svg';

class Preparation extends StatelessWidget {
  const Preparation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(STAR_LOGO),
          SizedBox(height: 20),
          Text(
            'This is page is in preparation',
            style: kAdTextDarkStyle,
          ),
        ],
      ),
    );
  }
}
