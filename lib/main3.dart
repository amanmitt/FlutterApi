import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // time UI
    debugShowCheckedModeBanner: false,
    home: DatePage(),
  ));
}

class DatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/sunset.jpg'), fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 160, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.refresh_sharp,
                        color: Colors.white,
                        size: 30,
                      )),
                  Text(
                    'Noida',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "13:52 PM",
                    style: TextStyle(color: Colors.white, fontSize: 65),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
