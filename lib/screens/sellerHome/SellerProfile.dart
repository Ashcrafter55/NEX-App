import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';

class SellProfile extends StatefulWidget {
  SellProfile({Key key}) : super(key: key);

  @override
  _SellProfileState createState() => _SellProfileState();
}

class _SellProfileState extends State<SellProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.purple,
                  child: const Text("SB", style: TextStyle(
                      fontSize: 20
                  ),),
                ) ,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:15),
                    child: Text("Simon's Bakery", style: TextStyle(
                        fontSize: 20
                    ),),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(left:20),
                margin: EdgeInsets.only(top:20),
                child: Card(
                  color: Color(0xFF8fdeebff) ,
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text("Restaruant Name"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left:20),
                margin: EdgeInsets.only(top:20),
                child: Card(
                  color: Color(0xFF8fdeebff) ,
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text("Location"),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left:20),
                margin: EdgeInsets.only(top:20),
                child: Card(
                  color: Color(0xFF8fdeebff) ,
                  child: ListTile(
                    leading: Icon(Icons.edit),
                    title: Text("Menu"),
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}
