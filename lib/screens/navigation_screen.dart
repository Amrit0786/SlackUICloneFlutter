import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:slack_clone_app_ui/config/palette.dart';
import 'package:slack_clone_app_ui/models/screen.dart';
import 'package:slack_clone_app_ui/screens/home_screen.dart';
import 'package:slack_clone_app_ui/widgets/custom_tab_bar.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedIndex = 0;
  List<Screen> screens = [
    Screen(
        screenName: 'Team11',
        screenUI: HomeScreen(),
        icon: FlutterIcons.home_ent,
        iconName: 'Home'),
    Screen(
        screenName: 'Direct messages',
        screenUI: Scaffold(),
        icon: FlutterIcons.chat_bubble_outline_mdi,
        iconName: 'DMs'),
    Screen(
        screenName: 'Mentions & reactions',
        screenUI: Scaffold(),
        icon: FlutterIcons.email_ent,
        iconName: 'Mentions'),
    Screen(
        screenName: 'You',
        screenUI: Scaffold(),
        icon: FlutterIcons.face_mdi,
        iconName: 'You'),
  ];

  void _onTap(int index) {
    print('index: $index');
    setState(() {
      selectedIndex = index;
      print('selectedIndex: $selectedIndex');
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: screens.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(47),
          child: AppBar(
            backgroundColor: Palette.appbar,
            title: Text(
              screens[selectedIndex].screenName,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.3),
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
        body: Stack(
          children: [
            screens[selectedIndex].screenUI,
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomTabBar(
                screens: screens,
                selectedIndex: selectedIndex,
                onTap: _onTap,
              ),
            )
          ],
        ),
      ),
    );
  }
}
