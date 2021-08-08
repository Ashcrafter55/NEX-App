import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/screens/buyerHome/homePage.dart';
import 'package:flutter_template_project/screens/buyerHome/searchPage.dart';
import 'package:get/get.dart';
class resultCards extends StatefulWidget {
  const resultCards({Key key}) : super(key: key);

  @override
  _resultCardsState createState() => _resultCardsState();
}

class _resultCardsState extends State<resultCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text("Dunkin Donuts", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),),
                ),
                SizedBox(
                  child: Text("Krispy Kream", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),),
                ),
                SizedBox(
                  child: Text("Donut Wheel", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),),
                ),
                SizedBox(
                  child: Text("Simon's Bakery", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),),
                ),
                SizedBox(
                  child: Text("Somi Somi", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),),
                ),
              ],
            ),
          ]
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: (){
            Get.offAll(homePage());
          },
          icon: Icon(Icons.arrow_back),
        ) ,
      ),
    );
  }
}
