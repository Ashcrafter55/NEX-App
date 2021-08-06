import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/globalVar.dart';
import 'package:flutter_template_project/screens/registration/sellerRegistration.dart';

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
                    "${restaurantName.text}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "$sales Total sales",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: foodMenu.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        child: Center(child: Text(foodMenu[index])),
                      );
                    }
                ),
              )
            ]
        ),
      ),
    );
  }
}
