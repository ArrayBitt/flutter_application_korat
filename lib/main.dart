
import 'package:flutter/material.dart';
import 'package:flutter_application_korat/states/authen_mobile.dart';
import 'package:get/get.dart';


void main() {
 
      runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AuthenMobile(),
    );
  }
}
