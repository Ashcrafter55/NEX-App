import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/login/login.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({ Key key }) : super(key: key);
  
  var items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile")
  ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
              length: 3,

      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: items,
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: CustomText(text: "Demo App",),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(accountName: CustomText(text: "Santos Enoque",), accountEmail: CustomText(text: "santosenoque.ss@gmail.com",)),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: CustomText(text: "Log out",),
                  onTap: (){
                    Get.offAll(LoginScreen());
                  },
                )
              ],
            ),
          ),
        body: TabBarView(
            children: [
              Center(child: CustomText(text: "Screen one",),),
                           Center(child: CustomText(text: "Screen two",),),
              Center(child: CustomText(text: "Screen three",),),

            ],
          ),
      ),
    );
  }
}