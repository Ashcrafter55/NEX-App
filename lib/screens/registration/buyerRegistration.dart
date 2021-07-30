import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/buyerHome/home.dart';
import 'package:flutter_template_project/screens/login/Start.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {

Widget build(BuildContext context) {
    // double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
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
                   TextField(
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Santos Enoque",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "abc@domain.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "123",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                 SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      "Location",
                          style: TextStyle(fontSize: 25)
                    ),
                    CustomButton(
                      onTap: (){
                        print("gps location");
                      },
                      title: "Use gps",
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "123 potato st, Springfield, Ohioio, 69420",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                  SizedBox(
                  height: 15,
                ),
                CustomButton(
                  onTap: (){
                    Get.offAll(HomeScreen());

                  },
                  title: "Register",
                ),
              ],
            ),
          ),
        ),
    );
  }
}