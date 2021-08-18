import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'AddVehicle.dart';

class BirthCertificate extends StatelessWidget {
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
                      Text('Birth Certificate',
                          style: TextStyle(color: Colors.black, fontSize: 23)),

                      SizedBox(height: 12),
                      Expanded(
                        child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting '
                            'industry. Lorem Ipsum has been the industrys standard dummy text '
                            'ever since the 1500s, when an unknown printer took a galley of '
                            'type and scrambled it to make a type specimen book. It has survived '
                            'not only five centuries, but also the leap into electronic typesetting, '
                            'remaining essentially unchanged.It was popularised in the 1960s with the'
                            ' release of Letraset sheets containing Lorem Ipsum passages, and more'
                            ' recently with desktop publishing software like Aldus PageMaker including'
                            ' versions of Lorem Ipsum.It was popularised in the 1960s with the release'
                            ' of Letraset sheets containing Lorem Ipsum passages, and more recently with'
                            ' desktop publishing software like Aldus PageMaker including versions of '
                            'Lorem Ipsum.',
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: (){
                            Navigator.push(
                                context, MaterialPageRoute(builder: (
                                context) => AddVehicle())
                            );

                          },
                          child: Text('OKAY',
                              style: TextStyle(color: Colors.green[400], fontSize: 16,fontWeight: FontWeight.bold)),
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
