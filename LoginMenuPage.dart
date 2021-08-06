import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CreateProfile.dart';

class LoginMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: Image(
                  image: NetworkImage(
                      'https://w0.peakpx.com/wallpaper/177/354/HD-wallpaper-kolkata-taxi-cars-street-vintage-yellow-taxi.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Image(image: AssetImage('assets/icon.png')))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          splashColor: Colors.white30,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateProfile()));
                          },
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(200, 44),
                              primary: Colors.green[400],
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (
                                  context) => CreateProfile())
                              );
                            },
                            child: Text('SIGN IN'),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ))
          ],
        ));
  }
}
