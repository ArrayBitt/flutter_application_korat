// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_application_korat/utility/app_constant.dart';

class WidgetForm1 extends StatelessWidget {
  const WidgetForm1({
    Key? key,
    this.obsecu,
    required this.changFunc,
    this.textEditingController,
    this.textInputType,
  }) : super(key: key);

  final bool? obsecu;
  final Function(String) changFunc;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      margin: const EdgeInsets.only(top: 3, bottom: 20),
      child: TextFormField(
        controller: textEditingController,
        obscureText: obsecu ?? false,
        style: AppConstant().appStyle(),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          fillColor: AppConstant.fieldColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
      ),
    );

  
  }
}
