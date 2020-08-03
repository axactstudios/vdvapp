import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/models/persistent-bottom-nav-bar-styles.widget.dart';
import 'package:persistent_bottom_nav_bar/models/persistent-nav-bar-scaffold.widget.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.widget.dart';
import 'package:vdvapp/Screens/login_screen.dart';

import 'NavBar/navBarItems.dart';
import 'NavBarPages/Recharge.dart';
import 'NavBarPages/home.dart';
import 'NavBarPages/EditPack.dart';
import 'NavBarPages/Service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      items: navBarItems,
      screens: _buildScreens(),
      showElevation: true,
      navBarCurve: NavBarCurve.upperCorners,
      confineInSafeArea: true,
      handleAndroidBackButtonPress: true,
      iconSize: 26.0,
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property
      onItemSelected: (index) {
        print(index);
      },
    );
  }

  List<Widget> _buildScreens() {
    return [HomePage(), RechargePage(), EditPage(), ServicePage()];
  }
}
