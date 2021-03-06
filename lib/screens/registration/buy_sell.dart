import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template_project/screens/registration/buyerRegistration.dart';
import 'package:flutter_template_project/screens/registration/sellerRegistration.dart';
import 'package:flutter_template_project/widgets/custom_button.dart';
import 'package:get/get.dart';

class BuySell extends StatelessWidget {
  const BuySell ({ Key key }) : super(key: key);

  Widget build(BuildContext context) {
    // double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:
                  SizedBox(
                    width: 300,
                    child: Text("Are you looking to buy food or sell food?",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: CustomButton(
                  onTap: (){
                    Get.offAll(BuyerRegistrationScreen());
                  },
                  title: "Buyer",
                ),
              ),

              SizedBox(
                height: 15,
              ),
              Center(
                child: CustomButton(
                  onTap: (){
                    Get.offAll(SellerRegistrationScreen());
                  },
                  title: "Seller",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}