import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftestt/YellowTaxi/AddVehicle.dart';

import 'SubscriptionPlan.dart';

class VehicleDocument extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Vehicle Document'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25,right: 23,top: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            row1(),
            Text('Vehicle Registration',style: TextStyle(fontSize: 15,color: Color(0xFF7F7F7F))),
            Padding(
              padding: const EdgeInsets.only(top: 17.5,bottom: 15.5),
              child: Divider(),
            ),

            row2(),
            Text('A Driving License is the official document',style: TextStyle(fontSize: 15,color: Color(0xFF7F7F7F))),
            Padding(
              padding: const EdgeInsets.only(top: 17.5,bottom: 15.5),
              child: Divider(),
            ),

            row3(),
            Text('A Passport is a travel document',style: TextStyle(fontSize: 15,color: Color(0xFF7F7F7F))),
            Padding(
              padding: const EdgeInsets.only(top: 17.5,bottom: 15.5),
              child: Divider(),
            ),

            row4(),
            Text('Incorrect document type',style: TextStyle(fontSize: 15,color: Color(0xFF7F7F7F))),
            Padding(
              padding: const EdgeInsets.only(top: 17.5,bottom: 15.5),
              child: Divider(),
            ),

            SizedBox(height: 6.5),
            Padding(
              padding: const EdgeInsets.all(8.5),
              child: Text("By continuing, I confirm that i have read & agree to the Terms and Condition & Privacy Policy"
                  , textAlign: TextAlign.center),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.3),
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
                        context) => SubscriptionPlan())
                    );
                  },
                  child: Text('NEXT'),
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget row1(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('RC Book',style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: IconButton(icon: Icon(
                Icons.info_outlined,
                size: 12,
                color: Colors.blue[400],
              ), onPressed: () {  },
              ),
            ),
          ],
        ),

        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(icon: Icon(
              Icons.done,
              color: Colors.green[400],
            ), onPressed: () {  },
            ),
            IconButton(icon: Icon(
              Icons.more_vert,
            ), onPressed: () {  },
            ),
          ],
        ),
      ],

    );
  }

  Widget row2(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('Insurance Policy',style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: IconButton(icon: Icon(
                Icons.info_outlined,
                size: 12,
                color: Colors.blue[400],
              ), onPressed: () {  },
              ),
            ),
          ],
        ),

        Container(
          margin: EdgeInsets.only(right: 24.3),
          height: 22,
          width: 22,
          child: CircularProgressIndicator(
            strokeWidth: 1,
            color: Colors.green[400],
          ),
        ),
      ],

    );
  }

  Widget row3(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('Owner Certificate',style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: IconButton(icon: Icon(
                Icons.info_outlined,
                size: 12,
                color: Colors.blue[400],
              ), onPressed: () {  },
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: TextButton(onPressed: () {  },
              child: Text('Upload',style: TextStyle(fontSize: 14,color: Colors.green[400],fontWeight: FontWeight.bold))),
        ),
      ],

    );
  }

  Widget row4(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text('PUC',style: TextStyle(fontSize: 16)),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: IconButton(icon: Icon(
                Icons.info_outlined,
                size: 12,
                color: Colors.blue[400],
              ), onPressed: () {  },
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(right: 25.0),
          child: TextButton(
              onPressed: (){},
              child: Text('Upload',style: TextStyle(fontSize: 14,color: Colors.green[400],fontWeight: FontWeight.bold))),
        ),

      ],

    );
  }
}
