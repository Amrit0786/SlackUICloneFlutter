import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:slack_clone_app_ui/config/palette.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Column(
        children: [
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  width: 0.3,
                  color: Colors.black38,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    offset: Offset(-0.5, 0),
                    blurRadius: 2,
                  )
                ]),
            child: Text(
              'Jump to...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }
}
