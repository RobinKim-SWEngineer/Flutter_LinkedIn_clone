import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/jobs/components/body.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Body(),
    );
  }
}
