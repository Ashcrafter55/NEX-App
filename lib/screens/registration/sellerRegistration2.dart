import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/buyerHome/home.dart';
import 'package:flutter_template_project/screens/login/Start.dart';
import 'package:flutter_template_project/screens/sellerHome/sellerHome.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class SellerRegistrationScreen2 extends StatelessWidget {

  Widget build(BuildContext context) {
    // double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:
              Text("Register",
                  style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Description of Restaurant",
                      hintText: "is very cool yes",
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 80, horizontal: 10),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                  "Create menu",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 16),
                width: 300,
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Search database",
                      hintText: "Search database",
                      icon: Icon(Icons.search),
                      border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Menu",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
              ),
            ),
            Center(
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                      borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    "Nothing yet!",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: CustomButton(
                onTap: (){
                  Get.offAll(SellerHomeScreen());

                },
                title: "Register",
              ),
            ),
          ],
        ),
      ),
    );
  }
}