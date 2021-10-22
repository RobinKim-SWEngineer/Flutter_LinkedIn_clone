import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/myProfile/components/components.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20),
          HeaderPictures(),
          TextIntro(),
          SizedBox(height: 20),
          Divider(thickness: 1.5),
          CommunityStatus(),
          Divider(thickness: 1.5),
          Premium(),
          SizedBox(height: 20),
          Divider(thickness: 1.5),
          MyItem(),
        ],
      ),
    );
  }
}
