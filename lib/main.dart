import 'package:flutter/material.dart';
import 'package:flutter_template_project/screens/login/Start.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XtraEats',
      theme: ThemeData(
  
        primarySwatch: Colors.blue,
      ),
      home: StartScreen(),
    );
  }
}
