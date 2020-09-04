import 'package:flutter/material.dart';
import 'package:slack_clone_app_ui/config/palette.dart';
import 'package:slack_clone_app_ui/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slack ',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
