import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/buyerHome/home.dart';
import 'package:flutter_template_project/screens/login/Start.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class BuyerRegistrationScreen extends StatelessWidget {

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
                   Center(
                     child: SizedBox(
                       width: 300,
                       child: TextField(
                  decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "firstName lastName",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                ),
                     ),
                   ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "abc@domain.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Password123",
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
                    "Location",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Address",
                          hintText: "123 potato st, Springfield, Ohioio, 69420",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                ),
                  SizedBox(
                  height: 15,
                ),
                Center(
                  child: CustomButton(
                    onTap: (){
                      print("Allow access pls");
                    },
                    title: "Allow access to gps",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // replace with map api later maybe
                Center(
                  child: SizedBox(
                    width: 300,
                    child: Image(
                      image: NetworkImage('https://miro.medium.com/max/1400/1*qYUvh-EtES8dtgKiBRiLsA.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: CustomButton(
                    onTap: (){
                      Get.offAll(HomeScreen());

                    },
                    title: "Register",
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}