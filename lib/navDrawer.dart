import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/drawer/gf_drawer.dart';

Widget retNavDrawer() {
  return GFDrawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(
          height: 50,
          child: Container(
            color: Color(0xFF573280),
          ),
        ),
        Container(
          color: Color(0xFF573280),
          height: 150,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GFAvatar(
                  size: 65,
                  backgroundColor: Colors.white,
                  child: Text(
                    'V',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.black,
                        fontFamily: 'nunito',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'VDV',
                    style: TextStyle(
                        fontFamily: 'nunito',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    'support@vdv.com',
                    style: TextStyle(
                        fontFamily: 'nunito',
                        fontSize: 16,
                        color: Color(0xFFFFE600)),
                  )
                ],
              )
            ],
          ),
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              'Recharge Information',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onTap: null,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 0.5,
          color: Colors.black26,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              'Notifications',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 0.5,
          color: Colors.black26,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              'Contact Us',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 0.5,
          color: Colors.black26,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              'Change Password',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 0.5,
          color: Colors.black26,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              'Complaints',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 0.5,
          color: Colors.black26,
        ),
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Text(
              'Log Out',
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'nunito',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onTap: () {},
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 0.5,
          color: Colors.black26,
        ),
      ],
    ),
  );
}
