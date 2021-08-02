import 'package:flutter/material.dart';

class SellHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "[Restaurant Name]",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "__ Total sales",
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
