import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/buyerHome/home.dart';
import 'package:flutter_template_project/screens/registration/registration.dart';
import 'package:flutter_template_project/screens/login/login.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({ Key key }) : super(key: key);

Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: ListView(
            children: [
              Center(
                child:
                  Text("Welcome To [App name]",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Center(
                child:
                Text("To continue please choose an option below",
                    style: TextStyle(
                        fontSize: 15)),
              ),
              CustomButton(
                onTap: (){
                  Get.offAll(LoginScreen());
                },
                title: "Login",
              ),

               SizedBox(
                height: 15,
              ),
              CustomButton(
                onTap: (){
                  Get.offAll(HomeScreen());
                },
                title: "Create account",
              ),
            ],
          ),
        ),
    );
  }
}