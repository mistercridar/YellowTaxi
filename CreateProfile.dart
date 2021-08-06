import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CreateProfile extends StatefulWidget {
  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  late ScrollController _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create Profile',
                style: TextStyle(color: Colors.black, fontSize: 25)),
            SizedBox(height: 44),
            Text('First Name',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Last Name',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text('Mobile Number',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text('Home Address',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),

            SizedBox(height: 20),
            Text('Password',
                style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(
              height: 40,
              child: TextFormField(
               obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
