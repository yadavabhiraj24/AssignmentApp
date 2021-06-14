import 'dart:io';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Colors.blue[700],
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
              padding: EdgeInsets.only(left: 20),
              height: 80,
              alignment: Alignment.centerLeft,
              color: Colors.blue[700],
              child: Text(
                "Leave & Attendance",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Home",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_outlined,
              color: Colors.white,
              size: 30,
            ),
            title: Text(
              "Exit",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () => exit(10),
          )
        ],
      ),
    ));
  }
}