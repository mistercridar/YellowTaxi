import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThankYouMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff32384D),
      height: double.infinity,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: Scaffold(
          backgroundColor: Color(0xFF32384D),
          body: Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.all(20),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Thank You',
                          style: TextStyle(color: Colors.black, fontSize: 23)),
                      SizedBox(height: 12),
                      Expanded(
                        child: Text(
                            'Thank you for registering with YelowTaxi. Please complete your registration and be activated by visiting our office.',
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text('OKAY',
                              style: TextStyle(
                                  color: Colors.green[400],
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
