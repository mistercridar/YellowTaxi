import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SendOtpVerification.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign In',
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              SizedBox(height: 44),
              Text('Mobile Name',
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
                  obscureText: _obsecureText,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                      prefixText: ' ',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecureText = !_obsecureText;
                          });
                        },
                        icon: Icon(_obsecureText
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined),
                      ),
                      suffixStyle: const TextStyle(color: Colors.green),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 19),
                child: InkWell(
                  splashColor: Colors.white30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 44),
                      primary: Colors.green[400],
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (
                          context) => SendOtpVerification())
                      );
                    },
                    child: Text('SIGN IN'),
                  ),

                ),
              ),
              SizedBox(height: 17),
              Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: (){},
                  child: Text('FORGOT PASSWORD',
                      style: TextStyle(color: Colors.green[400], fontSize: 14,fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
