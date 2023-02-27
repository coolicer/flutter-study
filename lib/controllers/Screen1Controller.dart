import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Screen1Controller extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  var name = '';
  var phone = '';
  var aList = <dynamic>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  void removeItemByIndex(int index) {
    var removedItem = aList.removeAt(index);
    if (kDebugMode) {
      print(removedItem);
    }
  }
  void addItem() {
    aList.add('');
  }
  void handleSubmit() {
    if (loginFormKey.currentState!.validate()) {
      Get.snackbar('Login', 'Login successfully');
      if (kDebugMode) {
        print('$name, $phone');
        print('$aList');
      }
    } else {
      Get.snackbar('Login', 'Invalid email or password');
    }
  }
}