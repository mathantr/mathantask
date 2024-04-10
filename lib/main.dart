import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:usertask/controller/usercontroller.dart';
import 'package:usertask/view/userpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserPage(),
    );
  }
}
