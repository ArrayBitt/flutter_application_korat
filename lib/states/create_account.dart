import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_korat/models/profile_model.dart';
import 'package:flutter_application_korat/states/authen_mobile.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';
import 'package:flutter_application_korat/utility/app_controller.dart';
import 'package:flutter_application_korat/widgets/widget_buttom.dart';
import 'package:flutter_application_korat/widgets/widget_form.dart';
import 'package:flutter_application_korat/widgets/widget_text.dart';
import 'package:flutter_application_korat/widgets/widget_text_buttom.dart';
import 'package:get/get.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  AppController controller = Get.put(AppController());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confrimpasswordController = TextEditingController();

  @override
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
                        text: 'ยินดีต้อนรับ',
                        textStyle: AppConstant()
                            .appStyle(size: 38, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: boxConstraints.maxWidth * 0.85,
                      child: Row(
                        children: [
                          WidgetText(
                            text: 'สร้างบัญชีผู้ใช้ หรือ',
                            textStyle: AppConstant().appStyle(
                                size: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          WidgetTextButtom(
                            label: 'เข้าสู่ระบบ',
                            pressFunc: () {
                              Get.to(const AuthenMobile());
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
                      margin: const EdgeInsets.only(top: 5),
                      child: WidgetForm1(
                        changFunc: (p0) {},
                        textEditingController: emailController,
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
                      margin: const EdgeInsets.only(top: 5),
                      child: WidgetForm1(
                        changFunc: (p0) {},
                        textEditingController: passwordController,
                        obsecu: true,
                      ),
                    ),
                    Container(
                      width: boxConstraints.maxWidth * 0.85,
                      child: WidgetText(
                        text: 'Confrim Password :',
                        textStyle: AppConstant()
                            .appStyle(size: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: WidgetForm1(
                        changFunc: (p0) {},
                        textEditingController: confrimpasswordController,
                        obsecu: true,
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WidgetButtom(
                            label: 'สร้างบัญชี',
                            pressFunc: () {
                              ProfileModel profileModel = ProfileModel(
                                email: emailController.text,
                                password: passwordController.text,
                                confrimpassword: confrimpasswordController.text,
                              );

                              FirebaseFirestore.instance
                                  .collection('userlogin')
                                  .add(profileModel.toMap())
                                  .then(
                                    (value) {},
                                  )
                                  .catchError(
                                    (error) {},
                                  );
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
