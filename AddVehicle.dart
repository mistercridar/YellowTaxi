import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ftestt/YellowTaxi/BirthCertificate.dart';

import 'VehicleDocument.dart';

class AddVehicle extends StatefulWidget {
  @override
  _AddVehicleState createState() => _AddVehicleState();
}

class _AddVehicleState extends State<AddVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Vehicle'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20,right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text('Service Type',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Micro',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text('Brand (Auto Suggestion)',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'BMW',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text('Model (Auto Suggestion)',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'ABC',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text('Manufacturer (Auto Suggestion)',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'BMW',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text('Number Plate',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'YT1234',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Text('Color',
                  style: TextStyle(color: Colors.black, fontSize: 16)),
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'RED',
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),

              SizedBox(height: 8),
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
                          context) => VehicleDocument())
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
