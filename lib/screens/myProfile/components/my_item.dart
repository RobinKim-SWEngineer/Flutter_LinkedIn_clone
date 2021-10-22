import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants.dart';

class MyItem extends StatelessWidget {
  const MyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.badge,
                color: Colors.blueGrey,
              ),
              SizedBox(width: 10),
              Text(
                'My items',
                style: kAdTextDarkStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
