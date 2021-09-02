import 'package:flutter/material.dart';
import 'package:linkedin_clone/constants.dart';

class CommunityStatus extends StatelessWidget {
  const CommunityStatus({Key? key}) : super(key: key);

  Row _showUpNetworkInfo(String title, int number) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: kInfoTextStyle,
        ),
        Text(
          number.toString(),
          style: kInfoNumberStyle,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _showUpNetworkInfo('Who viewed your profile', 272),
          SizedBox(height: 20),
          _showUpNetworkInfo('Connections', 352),
          SizedBox(height: 2),
          Row(children: [
            Text(
              'Grow your network',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ]),
        ],
      ),
    );
  }
}
