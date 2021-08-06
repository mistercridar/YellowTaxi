import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftestt/YellowTaxi/SignIn.dart';

class OTPVerification extends StatefulWidget {
  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();
  bool empty = true;
  late FocusNode myFocusNode1,
      myFocusNode2,
      myFocusNode3,
      myFocusNode4,
      myFocusNode5;

  @override
  void initState() {
    // TODO: implement initState
    myFocusNode1 = FocusNode();
    myFocusNode2 = FocusNode();
    myFocusNode3 = FocusNode();
    myFocusNode4 = FocusNode();
    myFocusNode5 = FocusNode();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    myFocusNode1.dispose();
    myFocusNode2.dispose();
    myFocusNode3.dispose();
    myFocusNode4.dispose();
    myFocusNode5.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 20, right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('OTP Verification',
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              SizedBox(height: 10),
              Text('Enter the 4-digit code sent to you at',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(height: 17),
              Row(
                children: [
                  Text('+9779801626262',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  TextButton(
                    onPressed: () {},
                    child: Text('Edit',
                        style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                        autofocus: true,
                        controller: _controller1,
                        focusNode: myFocusNode1,
                        onChanged: (String a) async {
                          myFocusNode2.requestFocus();
                          isEmpty();
                        },
                        textInputAction: TextInputAction.next,
                        textAlign: TextAlign.center,
                        maxLength: 1,
                        decoration: InputDecoration(
                          counterText: "",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                        autofocus: true,
                        controller: _controller2,
                        focusNode: myFocusNode2,
                        onChanged: (String a) async {
                          myFocusNode3.requestFocus();
                          isEmpty();
                        },
                        textInputAction: TextInputAction.next,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: "",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                        autofocus: true,
                        controller: _controller3,
                        onChanged: (String a) async {
                          myFocusNode4.requestFocus();
                          isEmpty();
                        },
                        focusNode: myFocusNode3,
                        textInputAction: TextInputAction.next,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: "",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: TextFormField(
                        onChanged: (val) {
                          isEmpty();
                        },
                        controller: _controller4,
                        focusNode: myFocusNode4,
                        autofocus: true,
                        textInputAction: TextInputAction.done,
                        maxLength: 1,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          counterText: "",
                          border: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "By continuing, I confirm that i have read & agree to the Terms and Condition & Privacy Policy",
                    textAlign: TextAlign.center),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: InkWell(
                  splashColor: Colors.white30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 44),
                      primary: empty ? Colors.grey : Colors.green[400],
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () => (!empty) ? onContinuePressed() : null,
                    child: Text('SUBMIT'),
                  ),
                ),
              ),
              SizedBox(height: 17),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: (){},
                  child: Text('RESEND CODE',
                      style: TextStyle(color: Colors.green[400], fontSize: 14,fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onContinuePressed() {
    {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    }
  }

  bool isEmpty() {
    setState(() {
      if ((_controller1.text.trim() != "") &&
          (_controller2.text.trim() != "") &&
          (_controller3.text.trim() != "") &&
          (_controller4.text.trim() != "")) {
        empty = false;
      } else {
        empty = true;
      }
    });
    return empty;
  }
}
