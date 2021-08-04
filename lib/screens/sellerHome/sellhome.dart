import 'package:flutter/material.dart';

var sales = 0;

class SellHome extends StatefulWidget {
  const SellHome({Key key}) : super(key: key);

  @override
  _SellHomeState createState() => _SellHomeState();
}

class _SellHomeState extends State<SellHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "[Restaurant Name]",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "$sales Total sales",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )
            ]
        ),
      ),
    );
  }
}
