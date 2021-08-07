import 'package:flutter/material.dart';

class SellProfile extends StatefulWidget {
  SellProfile({Key key}) : super(key: key);

  @override
  _SellProfileState createState() => _SellProfileState();
}

class _SellProfileState extends State<SellProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text("Profile page")
          ]
        )
      ),
    );
  }
}
