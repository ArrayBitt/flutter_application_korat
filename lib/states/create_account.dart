import 'package:flutter/material.dart';
import 'package:flutter_application_korat/states/authen_mobile.dart';
import 'package:flutter_application_korat/utility/app_constant.dart';
import 'package:flutter_application_korat/widgets/widget_buttom.dart';
import 'package:flutter_application_korat/widgets/widget_text.dart';
import 'package:flutter_application_korat/widgets/widget_text_buttom.dart';
import 'package:get/get.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool _isObscure = true;

  @override
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
                      text: 'ยินดีต้อนรับ',
                      textStyle: AppConstant()
                          .appStyle(size: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: boxConstraints.maxWidth * 0.83,
                    child: Row(
                      children: [
                        WidgetText(
                          text: 'สร้างบัญชีผู้ใช้ หรือ',
                          textStyle: AppConstant()
                              .appStyle(size: 15, fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   width: 50,
                        // ),
                        WidgetTextButtom(
                          label: 'เข้าสู่ระบบ',
                          pressFunc: () {
                            Get.to(const AuthenMobile());
                          },
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
                        hintText: "อีเมล",
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
                        hintText: 'รหัสผ่าน',
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
                        hintText: 'ยืนยันรหัสผ่าน',
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
                        Center(
                          child: WidgetButtom(
                            label: 'สร้างบัญชี ',
                            pressFunc: () {
                              //Get.to(AuthenMobile());
                            },
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
