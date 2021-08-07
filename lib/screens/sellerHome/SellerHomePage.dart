import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/globalVar.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/registration/sellerRegistration.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';

var sales = 0;

class SellHome extends StatefulWidget {
  const SellHome({Key key}) : super(key: key);

  @override
  _SellHomeState createState() => _SellHomeState();
}

class _SellHomeState extends State<SellHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${restaurantName.text}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    "$sales Total sales",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: foodMenu.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Color(0xff8fdeeb),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Center(
                              child: Text(
                                "${foodMenu[index]}",
                                style: TextStyle(
                                  fontSize: 18
                                )
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState((){
                                stock[index]++;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(color: active,
                                  borderRadius: BorderRadius.circular(20)),
                              alignment: Alignment.center,
                              width: 20,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: CustomText(
                                text: "+",
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Text(
                            "${stock[index]}",
                            style: TextStyle(
                              fontSize: 18
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              setState((){
                                stock[index]--;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(color: active,
                                  borderRadius: BorderRadius.circular(20)),
                              alignment: Alignment.center,
                              width: 20,
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: CustomText(
                                text: "-",
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                ),
              )
            ]
        ),
      ),
    );
  }
}
