import 'package:flutter/material.dart';
import 'components/components.dart';

class IntroProfile extends StatelessWidget {
  const IntroProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
      ),
    );
  }
}
