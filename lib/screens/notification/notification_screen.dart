import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/notification/components/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Body(),
    );
  }
}
