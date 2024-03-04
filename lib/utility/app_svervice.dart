import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_korat/models/profile_model.dart';
import 'package:flutter_application_korat/utility/app_controller.dart';
import 'package:flutter_application_korat/utility/app_dialog.dart';
import 'package:get/get.dart';



class AppService {

  Future<void> processFindProfileModels(
      {required String email, required BuildContext context}) async {
    AppController appController = Get.put(AppController());
    if (appController.profimeModels.isNotEmpty) {
      appController.profimeModels.clear();

    }

    print('##2mar associate ----> $email');
    await FirebaseFirestore.instance
        .collection('userlogin')
        .doc(email)
        .collection('profile')
        .get()
        .then((value) {
      if (value.docs.isNotEmpty) {
        for (var element in value.docs) {
          ProfileModel model = ProfileModel.fromMap(element.data());

          print('##2mar model ---> ${model.toMap()}');
          appController.profimeModels.add(model);
         
        }
      } else {
       
      }
    });
  }



 }


  
  
  
