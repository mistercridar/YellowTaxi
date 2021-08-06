import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BankDetails.dart';
import 'OTPVerification.dart';

class MobileNumberRegister extends StatefulWidget {
  @override
  _MobileNumberRegisterState createState() => _MobileNumberRegisterState();
}

class _MobileNumberRegisterState extends State<MobileNumberRegister> {
  final TextEditingController _controller = TextEditingController();
  bool empty=true;

  @override
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Enter Mobile Number',
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              SizedBox(height: 44),
              SizedBox(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: _controller,
                  onChanged: (String value) async {
                    if(value!=''){
                      setState(() {
                        empty=false;
                      });
                    }else{
                      setState(() {
                        empty=true;
                      });
                    }
                  },
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("By continuing, I confirm that i have read & agree to the Terms and Condition & Privacy Policy"
                    , textAlign: TextAlign.center),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: InkWell(
                  splashColor: Colors.white30,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 44),
                      primary: empty? Colors.grey : Colors.green[400],
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () => (!empty)? onContinuePressed() : null,
                    child: Text('CONTINUE'),
                  ),

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
          context, MaterialPageRoute(builder: (
          context) => OTPVerification())
      );
    }
  }
}
