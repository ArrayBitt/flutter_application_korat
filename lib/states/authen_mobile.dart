import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_korat/states/create_account.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';
import 'package:flutter_application_korat/widgets/widget_buttom.dart';
import 'package:flutter_application_korat/widgets/widget_form.dart';
import 'package:flutter_application_korat/widgets/widget_text.dart';
import 'package:flutter_application_korat/widgets/widget_text_buttom.dart';
import 'package:get/get.dart';

class AuthenMobile extends StatefulWidget {
  const AuthenMobile({Key? key}) : super(key: key);

  @override
  State<AuthenMobile> createState() => _AuthenMobileState();
}

class _AuthenMobileState extends State<AuthenMobile> {
  String? email, password;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: boxConstraints.maxWidth * 0.85,
                      child: WidgetText(
                        text: 'Korat Services',
                        textStyle: AppConstant()
                            .appStyle(size: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: boxConstraints.maxWidth * 0.85,
                      child: Row(
                        children: [
                          WidgetText(
                            text: 'เข้าสู่บัญชีของคุณ',
                            textStyle: AppConstant().appStyle(
                                size: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          WidgetTextButtom(
                            label: 'สร้างบัญชีใหม่',
                            pressFunc: () {
                              Get.to(const CreateAccount());
                            },
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: boxConstraints.maxWidth * 0.85,
                      child: WidgetText(
                        text: 'Email :',
                        textStyle: AppConstant()
                            .appStyle(size: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: WidgetForm1(
                        changFunc: (p0) {
                          email = p0.trim();
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: boxConstraints.maxWidth * 0.85,
                      child: WidgetText(
                        text: 'Password :',
                        textStyle: AppConstant()
                            .appStyle(size: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: WidgetForm1(
                        changFunc: (p0) {
                          password = p0.trim();
                        },
                        obsecu: true,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WidgetButtom(
                            label: 'ลืมรหัสผ่าน',
                            pressFunc: () {},
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          WidgetButtom(
                            label: 'login',
                            pressFunc: () {
                              void login() async {
                                try {
                                  final QuerySnapshot<Map<String, dynamic>>
                                      result = await FirebaseFirestore.instance
                                          .collection('userlogin')
                                          .where('email', isEqualTo: email)
                                          .where('password',
                                              isEqualTo: password)
                                          .limit(1)
                                          .get();

                                  if (result.docs.isNotEmpty) {
                                  } else {
                                    print(
                                        'Failed to sign in. Please check your credentials.');
                                  }
                                } catch (e) {
                                  print('An error occurred: $e');
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
