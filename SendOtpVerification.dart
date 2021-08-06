import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendOtpVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xff32384D),
      height: double.infinity,
      width: double.infinity,
      child: Align(
        alignment: Alignment.center,
        child: Scaffold(
          backgroundColor: Color(0xFF32384D),
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(5)
              ),

              height: 200,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Confirm',
                          style: TextStyle(color: Colors.black, fontSize: 23)),

                      Text("We will send verification code to +91 98765 43210",
                          style: TextStyle(color: Colors.grey, fontSize: 16)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {  },
                            child: Text('CANCEL',
                                style: TextStyle(color: Colors.green[400], fontSize: 16)),
                          ),
                          SizedBox(width: 34),
                          TextButton(
                            onPressed: () {  },
                            child: Text('SEND OTP',
                                style: TextStyle(color: Colors.green[400], fontSize: 16)),
                          ),
                        ],
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
