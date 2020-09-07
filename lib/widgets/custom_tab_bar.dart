import 'package:flutter/material.dart';
import 'package:slack_clone_app_ui/models/screen.dart';

class CustomTabBar extends StatelessWidget {
  final List<Screen> screens;
  final int selectedIndex;
  final Function(int) onTap;

  const CustomTabBar(
      {Key key,
      @required this.screens,
      @required this.selectedIndex,
      @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey[300]),
          ),
        ),
        child: TabBar(
          tabs: screens
              .asMap()
              .map(
                (index, screen) => MapEntry(
                  index,
                  Tab(
                    icon: Icon(
                      screen.icon,
                      color:
                          selectedIndex == index ? Colors.black : Colors.grey,
                      size: 22,
                    ),
                    iconMargin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      screen.iconName,
                      style: TextStyle(
                        color:
                            selectedIndex == index ? Colors.black : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
          onTap: onTap,
          indicator: BoxDecoration(),
        ),
      ),
    );
  }
}
