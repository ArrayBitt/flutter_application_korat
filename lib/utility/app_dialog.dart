import 'package:flutter/material.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';
import 'package:flutter_application_korat/widgets/widget_buttom.dart';
import 'package:flutter_application_korat/widgets/widget_text.dart';
import 'package:get/get.dart';


class AppDialog {
  final BuildContext context;
  AppDialog({
    required this.context,
  });

  void normalDialog({
    required String title,
    required String subTitle,
    Widget? actionWidget,
    Widget? oneActionWidget,
    Widget? action2Widget,
    Widget? contenWidget,
  }) {
    Get.dialog(
      AlertDialog(
        icon: Icon(
          Icons.check_box,
          color: AppConstant.active1,
          size: 100,
        ),
        title: WidgetText(
          text: title,
          textStyle: AppConstant().h2Style(),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            contenWidget ?? WidgetText(text: subTitle),
          ],
        ),
        actions: [
          actionWidget ?? const SizedBox(),
          SizedBox(
            width: 1,
          ),
          action2Widget ?? const SizedBox(),
          SizedBox(
            width: 1,
          ),
          oneActionWidget ??
              Column(
                children: [
                  WidgetButtom(
                    label: action2Widget == null ? 'Cancel' : 'Cancel',
                    pressFunc: () => Get.back(),
                  ),
                ],
              ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
