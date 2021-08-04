import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key key}) : super(key: key);

  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                padding: EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search XtraEats",
                    icon: Icon (Icons.search),
                    border: InputBorder.none,
                  ),
                ), width: 500),
          ],
        ),
        Row(
          children: [
            Container(
              child: Text("Recents", style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold),),
            )
        ],
          )
      ],
    );
  }
}
