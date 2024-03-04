import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final _db = FirebaseStorage.instance;
}
