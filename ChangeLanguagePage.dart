import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'LoginMenuPage.dart';

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {

  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();
  bool selected=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(alignment : Alignment.topLeft, child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(Icons.arrow_back),
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Choose Language',style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
          ),
          Expanded(
            child: new ListView.builder(
                itemCount: checkBoxListTileModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return new Container(
                    child: Column(
                      children: <Widget>[

                        new CheckboxListTile(
                            activeColor: Colors.green[300],
                            //font change
                            title: new Text(
                              checkBoxListTileModel[index].title,
                              style: TextStyle(
                               color: checkBoxListTileModel[index].isCheck? Colors.green : Colors.black,
                                  fontSize: 14,
                                  letterSpacing: 0.5),
                            ),
                            value: checkBoxListTileModel[index].isCheck
                          ,
                            secondary: Container(
                              height: 50,
                              width: 50,
                            ),
                          onChanged: (bool? value) {
                                itemChange(value!, index);

                        },

                            )
                      ],
                    ),
                  );
                }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginMenuPage()));
            },
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.green[400]),
              height: 48,
              width: 400,
                child: Center(child: Text('Proceed',style: TextStyle(color: Colors.white))),

            ),
          ),
          )
        ],
      ),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {

      for(int i=0; i<checkBoxListTileModel.length; i++){
        if(checkBoxListTileModel[index]==checkBoxListTileModel[i]){
          checkBoxListTileModel[i].isCheck = val;
        }else{
          checkBoxListTileModel[i].isCheck = false;
        }
      }
    });
  }
}
class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.img,required this.title,required this.isCheck});
  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/android_img.png',
          title: "Arabic",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/flutter.jpeg',
          title: "Chinese",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/ios_img.webp',
          title: "English",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/php_img.png',
          title: "Korean",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          img: 'assets/images/node_img.png',
          title: "Urdu",
          isCheck: false),
    ];
  }
}
