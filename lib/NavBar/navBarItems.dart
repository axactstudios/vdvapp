import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

//factcheck,rule
List<PersistentBottomNavBarItem> navBarItems = [
  PersistentBottomNavBarItem(
    icon: Icon(FontAwesomeIcons.home),
    title: ("Home"),
    activeColor: Color(0xFF573280),
    inactiveColor: Colors.black87,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(Icons.power),
    title: ("Recharge"),
    activeColor: Color(0xFF573280),
    inactiveColor: Colors.black87,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(FontAwesomeIcons.edit),
    title: ("Edit Pack"),
    activeColor: Color(0xFF573280),
    inactiveColor: Colors.black87,
  ),
  PersistentBottomNavBarItem(
    icon: Icon(FontAwesomeIcons.user),
    title: ("Service"),
    activeColor: Color(0xFF573280),
    inactiveColor: Colors.black87,
  ),
];
