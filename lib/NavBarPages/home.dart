import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

import '../navDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: retNavDrawer(),
      appBar: AppBar(
        title: Text('VDV'),
        backgroundColor: Color(0xFF573280),
      ),
    );
  }
}
