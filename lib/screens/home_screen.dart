import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:slack_clone_app_ui/config/palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
      ),
    );
  }
}
