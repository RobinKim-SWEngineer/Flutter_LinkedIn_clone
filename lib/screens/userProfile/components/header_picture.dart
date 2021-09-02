import 'package:flutter/material.dart';

const HANDSOME_ME = 'assets/images/handsome_me.png';
const PRAGUE = 'assets/images/prague.png';

class HeaderPictures extends StatelessWidget {
  const HeaderPictures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 180,
          width: double.infinity,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Image.asset(PRAGUE),
          ),
        ),
        Positioned(
          top: 100,
          left: 130,
          child: Container(
              color: Colors.transparent,
              height: 150,
              width: 150,
              child: Image.asset(HANDSOME_ME)),
        ),
      ],
    );
  }
}
