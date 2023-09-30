import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:splash_login_dashboard_flutter_getx/app/routes/app_pages.dart';

class LoginController extends GetxController {
  // final getStorge = GetStorage();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  String email = "";
  late FocusNode myFocusNode;
  RxString title = ''.obs;
  @override
  void onInit() {
    emailController = TextEditingController();
    title.value = "Enter your email address";
    super.onInit();
    myFocusNode = FocusNode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    myFocusNode.dispose();
    super.onClose();
  }

  String? validateEmail(value) {
    if (!GetUtils.isEmail(value)) {
      return 'please provide valid email';
    }

    return null;
  }

  void provideTitle() {
    if (loginFormKey.currentState!.validate()) {
      title.value = "Next";
    } else if (loginFormKey.currentState!.validate() == false) {
      title.value = "Enter your email address";
    }
    // update();
    // isvalid.value = true;
  }
}
