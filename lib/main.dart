import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:product_control/di/dependency_injection.dart';
import 'package:product_control/view/home_page.dart';

// ignore: argument_type_not_assignable
void main() async{
  Injector.configure(Flavor.MOCK);
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





