import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/buyerHome/home.dart';
import 'package:flutter_template_project/screens/registration/buyerRegistration.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({ Key key }) : super(key: key);

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:
                Text("Login",
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
                        hintText: "123",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
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
                  title: "Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}