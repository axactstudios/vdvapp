import 'package:flutter/material.dart';
import 'package:vdvapp/NavBarPages/home.dart';

import '../main.dart';

class Config extends StatefulWidget {
  @override
  _ConfigState createState() => _ConfigState();
}

class _ConfigState extends State<Config> {
  String amount = "", stb = "", vc = "", add = "";
  bool saveAttempt = false;
  final listOfPlans = ["Regular", "Family", "Premium HD"];
//  (Rs.200/month, 170 SD Channels)
//  (Rs.300/month, 300 SD Channels)
//  (Rs.500/month, 400 SD Channels, 30 HD Channels)
  String DropdownValue = 'Regular';

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF573280),
        title: Text(
          "VDV",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'nunito'),
        ),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    Text(
                      'STB Details',
                      style: TextStyle(
                          color: Color(0xFF573280),
                          fontSize: 30,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      onChanged: (textValue) {
                        setState(() {
                          stb = textValue;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                        ),
                        hintText: 'STB No.',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter STB no.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      onChanged: (textValue) {
                        setState(() {
                          vc = textValue;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                        ),
                        hintText: 'VC No.',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter VC no.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      maxLines: 3,
                      minLines: 2,
                      onChanged: (textValue) {
                        setState(() {
                          add = textValue;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                        ),
                        hintText: 'Address',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    DropdownButtonFormField(
                      value: DropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      decoration: InputDecoration(
                        labelText: "Current Plan",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      items: listOfPlans.map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(
                            value,
                            overflow: TextOverflow.fade,
                          ),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          DropdownValue = newValue;
                        });
                      },
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Select Plan';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      onChanged: (textValue) {
                        setState(() {
                          amount = textValue;
                        });
                      },
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFF573280),
                          ),
                        ),
                        hintText: 'Enter Monthly Amount',
                        hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please Enter Amount';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          saveAttempt = true;
                        });
                        if (formKey.currentState.validate()) {
                          formKey.currentState.save();

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        }
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 54.0),
                        decoration: BoxDecoration(
                            color: Color(0xFF573280),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
