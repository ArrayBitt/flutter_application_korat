import 'package:flutter/material.dart';
import 'package:flutter_application_korat/bodys/shop_body.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  var bodys = <Widget>[
    const ShopBody(),
  ];

  var titles = <String>['Shop'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
