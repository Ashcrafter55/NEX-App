import 'package:flutter/material.dart';

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
                  backgroundColor: Colors.purple,
                  child: const Text("SR", style: TextStyle(
                    fontSize: 20
                  ),),
                ) ,
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:15),
                child: Text("Simon Ryding", style: TextStyle(
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
