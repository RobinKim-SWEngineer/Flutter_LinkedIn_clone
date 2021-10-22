import 'package:flutter/material.dart';

class TextIntro extends StatelessWidget {
  const TextIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 85),
      child: Column(
        children: [
          Text(
            'Robin Kim',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Flutter / Android developer',
            style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 20, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
