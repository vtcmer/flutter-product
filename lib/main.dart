import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:product_control/di/dependency_injection.dart';
import 'package:product_control/view/home_page.dart';


void main() async{
  Injector.configure(Environment.PROD);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS
              ? Colors.grey[100]
              : null
      ),
      home: new HomePage(),
    );
  }
}





