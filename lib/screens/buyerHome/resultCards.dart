import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed:null ,
                    icon: Icon(Icons.arrow_back),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text("Dunkin Donuts", style: TextStyle(
                      color: Colors.black,
                      fontSize: 15
                  ),),
                )
              ],
            ),
          ]
      ),
    );
  }
}
