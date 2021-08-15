import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftestt/YellowTaxi/CreateProfile.dart';
import 'package:ftestt/YellowTaxi/SignIn.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _obsecureText1 = true;
  bool _obsecureText2 = true;
  bool equal = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
  }

  bool isPasswordEqual() {
    setState(() {
      if (_newPasswordController.text.trim()==
          _confirmPasswordController.text.trim()) {
        equal = true;
      }
      else if (_newPasswordController.text.trim()=="" ||
          _confirmPasswordController.text.trim()=="") {
        equal = false;
      }

      else {
        equal = false;
      }
    });
    return equal;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Reset Password"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 20, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 44),
              Text('New Password',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  onChanged: (val){
                    isPasswordEqual();

                  },
                  controller: _newPasswordController,
                  obscureText: _obsecureText1,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixText: ' ',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obsecureText1 = !_obsecureText1;
                        });
                      },
                      icon: Icon(_obsecureText1
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined),
                    ),
                    suffixStyle: const TextStyle(color: Colors.green),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Confirm Password',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  onChanged: (val){
                    isPasswordEqual();
                    if(val.isEmpty){
                      return null;
                    }
                  },
                  controller: _confirmPasswordController,
                  obscureText: _obsecureText2,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    prefixText: ' ',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obsecureText2 = !_obsecureText2;
                        });
                      },
                      icon: Icon(_obsecureText2
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
                      if(equal){
                        Navigator.push(
                            context, MaterialPageRoute(builder: (
                            context) => CreateProfile())
                        );
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: const Text('Password do not match'),
                          duration: const Duration(seconds: 2),
                        ));
                      }

                    },
                    child: Text('RESET'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
