import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/globalVar.dart';
import 'package:flutter_template_project/screens/buyerHome/homePage.dart';
import 'package:flutter_template_project/screens/sellerHome/SellerHome.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:get/get.dart';

String alert = " ";

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
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
                  child: TextFormField(
                    controller: Email,
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
                    controller: Password,
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
                    if (Email.text == "Seller" && Password.text == "Seller"){
                      Get.offAll(sellHomePage());
                      restaurantName.text = "Xtra Eats Demo";
                      for (int i = 0; i < 15; i++){
                        foodMenu.add("Food $i");
                        stock.add(0);
                      }
                    } else if (Email.text == "Buyer" && Password.text == "Buyer"){
                      Get.offAll(homePage());
                    } else {
                      setState(() {
                        alert = "Incorrect Email or Password";
                      });
                    }
                  },
                  title: "Login",
                ),
              ),
              Center(
                child: Text(
                    "$alert",
                    style: TextStyle(color: Colors.red),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
