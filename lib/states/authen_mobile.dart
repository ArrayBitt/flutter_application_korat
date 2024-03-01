import 'package:flutter/material.dart';
import 'package:flutter_application_korat/states/create_account.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';
import 'package:flutter_application_korat/widgets/widget_buttom.dart';
import 'package:flutter_application_korat/widgets/widget_text.dart';
import 'package:flutter_application_korat/widgets/widget_text_buttom.dart';
import 'package:get/get.dart';

class AuthenMobile extends StatefulWidget {
  const AuthenMobile({super.key});

  @override
  State<AuthenMobile> createState() => _AuthenMobileState();
}

class _AuthenMobileState extends State<AuthenMobile> {
  @override
  bool _isObscure = true;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstant.bgColor,
      body: SafeArea(
        child: LayoutBuilder(builder: (context, BoxConstraints boxConstraints) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => FocusScope.of(context).requestFocus(),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: boxConstraints.maxWidth * 0.85,
                    child: WidgetText(
                      text: 'Korat Services',
                      textStyle: AppConstant().appStyle(
                        size: 38,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: boxConstraints.maxWidth * 0.83,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            WidgetText(
                              text: 'เข้าสู่บัญชีของคุณ',
                              textStyle: AppConstant().appStyle(
                                  size: 15, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            WidgetTextButtom(
                              label: 'สร้างบัญชีใหม่',
                              pressFunc: () {
                                Get.to(const CreateAccount());
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 350,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: const TextField(
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 20),
                        filled: true,
                        hintText: "Email",
                        hintStyle: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Container(
                    height: 45,
                    width: 350,
                    color: Colors.white,
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    child: TextField(
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(_isObscure
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
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
                          label: 'เช้าสู่ระบบ',
                          pressFunc: () {
                            Get.to(const CreateAccount());
                          },
                        ),
                      ],
                    ),
                  ),
                  //WidgetForm(),
                  // WidgetForm(obsecu: true,),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
