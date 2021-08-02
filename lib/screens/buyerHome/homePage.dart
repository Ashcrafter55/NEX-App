import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/buyerHome/buyerHome.dart';
import 'package:flutter_template_project/screens/buyerHome/profilePage.dart';
import 'package:flutter_template_project/screens/buyerHome/searchPage.dart';
import 'package:flutter_template_project/screens/login/login.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class homePage extends StatefulWidget {
  homePage({Key key}) : super(key: key);

  @override
  _homePageState createState() => _homePageState();
}


class _homePageState extends State<homePage> {
  var i  = 0;
  var items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
  ];

  var pages = [
    home(),
    searchPage(),
    profilePage()
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
        appBar: AppBar(
          title: Text("hello"),
        ),
        body: pages[i]);
  }
}
