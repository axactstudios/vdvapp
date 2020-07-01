import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    print(height);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF573280), Color(0xFF2A193E)])),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: 200,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.57),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FittedBox(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: height / 22.4,
                              fontFamily: 'k2d'),
                        ),
                      ),
                      SizedBox(
                        height: height / 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: height / 30.8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFEFF8E2),
                        ),
                        height: height / 22.4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'Phone Number',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6B6B6B),
                                    fontFamily: 'k2d')),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 37.3,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: height / 30.8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFEFF8E2),
                        ),
                        height: height / 22.4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                    color: Color(0xFF6B6B6B),
                                    fontFamily: 'k2d')),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: height / 30.8),
                          child: InkWell(
                            child: Text('Forgot Password?'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: height / 10),
                        height: height / 22.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF573280),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            'Enter',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'k2d',
                                fontSize: height / 40),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      FittedBox(
                        child: Text(
                          'Dont Have an account yet?',
                          style: TextStyle(fontFamily: 'k2d', fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: height / 100,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: height / 10),
                        height: height / 22.4,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFF573280),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'k2d',
                                fontSize: height / 40),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
