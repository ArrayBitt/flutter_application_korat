// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';


class WidgetForm extends StatelessWidget {
  const WidgetForm({
    Key? key,
    this.obsecu,
  }) : super(key: key);

  final bool? obsecu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: const EdgeInsets.only(top: 3, bottom: 30),
      child: TextFormField(
        obscureText: obsecu ?? false,
        style: AppConstant().appStyle(),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          fillColor: AppConstant.fieldColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
