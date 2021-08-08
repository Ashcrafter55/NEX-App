import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/globalVar.dart';

class profilePage extends StatefulWidget {
  profilePage({Key key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  child: Image.asset("images/Cat.jpg"),
                ) ,
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:15),
                child: Text("${Name.text}", style: TextStyle(
                  fontSize: 20
                ),),
              )

          ]
        )
        ]
      )
    );
  }
}
