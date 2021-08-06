import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CreateProfile.dart';

class BankDetails extends StatefulWidget {
  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Details'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Text('Bank Name',
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
              Text('Account Holder Name',
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
              Text('Account Number',
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
              Text('Swift/IFSC Code',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
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
                margin: EdgeInsets.only(top: 163),
                child: InkWell(
                  splashColor: Colors.white30,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateProfile()));
                  },

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
                          context) => CreateProfile())
                      );
                    },
                    child: Text('REGISTER'),
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
