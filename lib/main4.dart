import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutterapi/main.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TimePage(),
  ));
}

class TimePage extends StatefulWidget {
  @override
  _TimePageState createState() => _TimePageState();
}

class _TimePageState extends State<TimePage> {
  get futureAlbum => null;

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
                  FutureBuilder<Album>(
                    future: futureAlbum,                            // call API here
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(snapshot.data.title);
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }

                      // By default, show a loading spinner.
                      return CircularProgressIndicator();
                    },
                  ),
                  // Text(
                  //   "13:52 PM",
                  //   style: TextStyle(color: Colors.white, fontSize: 65),
                  // )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
