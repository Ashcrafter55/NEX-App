import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const CustomButton({ Key key, this.title, this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    InkWell(
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(color: active,
                  borderRadius: BorderRadius.circular(20)),
                  alignment: Alignment.center,
                  width: 300,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: CustomText(
                    text: title,
                    color: Colors.black,
                  ),
                ),
              );
  }
}