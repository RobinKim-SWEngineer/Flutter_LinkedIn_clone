import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/post/components/body.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Body(),
    );
  }
}
