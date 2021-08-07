import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/screens/buyerHome/resultCards.dart';
import 'package:get/get.dart';

class searchPage extends StatefulWidget {
  const searchPage({Key key}) : super(key: key);

  @override
  _searchPageState createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Column(
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
                        hintText: "Search XtraEats",
                        icon: Icon (Icons.search),
                        border: InputBorder.none,
                      ),
                    ), width: 500),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Text("Recents", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text("Pizza", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15, top: 20),
                  child: Text("Cuisines", style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text("Breakfast", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 30, top: 10),
                    child: TextButton(
                      style: TextButton.styleFrom(textStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 15
                      )),
                      child: Text("Desserts"),
                      onPressed: (){
                        Get.offAll(resultCards());
                      },
                    )
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text("American", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text("Indian", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text("Japanese", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, top: 10),
                  child: Text("Chinese Thai Mexican", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15
                  ),),
                ),
              ],
            ),
          ],
        )


    );
  }
}
