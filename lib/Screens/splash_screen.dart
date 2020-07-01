import 'package:flutter/material.dart';
import 'package:vdvapp/Screens/home_screen.dart';
import 'package:vdvapp/Screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginScreen(),
        '/home': (BuildContext context) => HomeScreen(),
      },
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF573280), Color(0xFF2A193E)])),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Container(
              height: 200,
              width: 200,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
