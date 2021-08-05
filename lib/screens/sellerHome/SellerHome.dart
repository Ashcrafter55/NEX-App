import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/login/login.dart';
import 'package:flutter_template_project/screens/sellerHome/SellerHomePage.dart';
import 'package:flutter_template_project/screens/sellerHome/SellerProfile.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class sellHomePage extends StatefulWidget {
  sellHomePage({Key key}) : super(key: key);

  @override
  _sellHomePageState createState() => _sellHomePageState();
}


class _sellHomePageState extends State<sellHomePage> {
  var i  = 0;
  var items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
  ];

  var pages = [
    SellHome(),
    SellProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: i,
          items: items,
          onTap: (index){
            setState((){
              i = index;
            });
          },
        ),
        body: pages[i]
    );
  }
}