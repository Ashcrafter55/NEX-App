import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/sellerHome/SellerHome.dart';
import 'package:flutter_template_project/helpers/globalVar.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class SellerRegistrationScreen2 extends StatefulWidget {
  const SellerRegistrationScreen2({Key key}) : super(key: key);

  @override
  _SellerRegistrationScreen2State createState() => _SellerRegistrationScreen2State();
}

class _SellerRegistrationScreen2State extends State<SellerRegistrationScreen2> {
  void Add(){
    setState((){
      foodMenu.add(Menu.text);
      stock.add(0);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  controller: description,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      labelText: "Description of Restaurant",
                      hintText: "is very cool yes",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16),
                  width: 250,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextFormField(
                    controller: Menu,
                    decoration: InputDecoration(
                        labelText: "Search database",
                        hintText: "Search database",
                        icon: Icon(Icons.search),
                        border: InputBorder.none
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Add();
                  },
                  child: Container(
                    decoration: BoxDecoration(color: active,
                        borderRadius: BorderRadius.circular(20)),
                    alignment: Alignment.center,
                    width: 50,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: CustomText(
                      text: "Add",
                      color: Colors.black,
                    ),
                  ),
                )
              ],
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
            Expanded(
              child: ListView.builder(
                  itemCount: foodMenu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            color: Color(0xff8fdeeb),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.black)
                        ),
                        child: Center(
                            child: Text(
                                "${foodMenu[index]}",
                                style: TextStyle(
                                  fontSize: 18
                                )
                            )
                        ),
                      ),
                    );
                  }
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: CustomButton(
                onTap: (){
                  Get.offAll(sellHomePage());

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
