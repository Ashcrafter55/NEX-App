import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/globalVar.dart';

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
                  backgroundColor: Colors.white,
                  child: Image.asset("images/Chef.png")
                ) ,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top:15),
                    child: Text("${restaurantName.text}", style: TextStyle(
                        fontSize: 20
                    ),),
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 300,
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
              ),
              Center(
                child: Container(
                  width: 300,
                  padding: EdgeInsets.only(left:20),
                  margin: EdgeInsets.only(top:20),
                  child: Card(
                    color: Color(0xFF8fdeebff) ,
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text("Description"),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
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
              ),
              Center(
                child: Container(
                  width: 300,
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
              ),
            ],
          ),
        )
    );
  }
}
