import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ThankYouMessage.dart';

class SubscriptionPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Subscription Plan'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Basic Plan', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 4),
                    Text('1 Months',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 2),
                        Text('10 rides Everyday',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(height: 19),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 2),
                        Text('2 Cash rides',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(height: 19),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 2),
                        Text('50 km travel rides',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(height: 15),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ThankYouMessage(),
                                ));
                          },
                          child: Text('TRY FREE',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.green[400],
                              )),
                        )),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Classic Plan', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 4),
                    Text('1 Months',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 2),
                        Text('10 rides Everyday',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(height: 19),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 2),
                        Text('2 Cash rides',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(height: 19),
                    Row(
                      children: [
                        Icon(Icons.circle, size: 2),
                        Text('50 km travel rides',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(height: 15),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ThankYouMessage(),
                              ));
                        },
                        child: Text('BUY AT \$ 20.50',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[400],
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
