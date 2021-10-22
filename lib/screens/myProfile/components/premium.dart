import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants.dart';

class Premium extends StatelessWidget {
  const Premium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Access exclusive tools & insights',
                style: kAdTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(
                Icons.add_chart,
                color: Colors.orange,
              ),
              SizedBox(width: 10),
              Text(
                'Try Premium for free',
                style: kAdTextDarkStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
