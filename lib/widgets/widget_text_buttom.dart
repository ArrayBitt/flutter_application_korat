// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';
import 'package:flutter_application_korat/widgets/widget_text.dart';


class WidgetTextButtom extends StatelessWidget {
  const WidgetTextButtom({
    Key? key,
    required this.label,
    required this.pressFunc,
  }) : super(key: key);

  final String label;
  final Function() pressFunc;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: pressFunc,
        child: WidgetText(
          text: label,
          textStyle: AppConstant().appStyle(
              size: 18,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 253, 111, 15)),
        ));
  }
}
