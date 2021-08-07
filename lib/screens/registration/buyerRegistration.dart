import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/screens/buyerHome/homePage.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:get/get.dart';

class BuyerRegistrationScreen extends StatefulWidget {
  const BuyerRegistrationScreen({Key key}) : super(key: key);

  @override
  _BuyerRegistrationScreenState createState() => _BuyerRegistrationScreenState();
}

class _BuyerRegistrationScreenState extends State<BuyerRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                  onTap: () => showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Allow access to location'),
                      content: const Text('We need your location'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  ),
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
                    Get.offAll(homePage());

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
