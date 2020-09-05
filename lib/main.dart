import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:slack_clone_app_ui/config/palette.dart';
import 'package:slack_clone_app_ui/screens/screens.dart';

void main() {
  /* Makes statusBar color same as appBar color.
  It is different from setting up the brightness
  in which status bar color will not be exactly
  as you appBar color.
  */
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Palette.appbar,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slack ',
      theme: ThemeData(primaryColor: Colors.grey.shade700),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45),
          child: AppBar(
            backgroundColor: Palette.appbar,
            title: Text(
              'Team11',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.1),
            ),
            actions: [
              IconButton(
                padding: EdgeInsets.only(right: 10),
                icon: Icon(
                  FlutterIcons.search1_ant,
                  size: 20,
                  color: Colors.white,
                ),
                onPressed: () => print('search'),
              )
            ],
            elevation: 0,
          ),
        ),
        body: HomeScreen(),
      ),
    );
  }
}
