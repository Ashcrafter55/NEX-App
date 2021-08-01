import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/login/Start.dart';
import 'package:flutter_template_project/screens/sellerHome/sellhome.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'SellerProfile.dart';

class SellerHomeScreen extends StatelessWidget {
  const SellerHomeScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: CustomText(text: "Demo App",),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car, color: Colors.black,)),
              Tab(icon: Icon(Icons.directions_transit, color: Colors.black,))
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: CustomText(text: "Santos Enoque",), accountEmail: CustomText(text: "santosenoque.ss@gmail.com",)),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: CustomText(text: "Log out",),
                onTap: (){
                  Get.offAll(StartScreen());
                },
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SellHome(),
            SellProfile()
          ],
        ),
      ),
    );
  }
}