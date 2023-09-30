import 'package:flutter_getx_sample_project/app/routes/app_pages.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:splash_login_dashboard_flutter_getx/app/routes/app_pages.dart';

class SplashController extends GetxController {
  // final getStorge = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(Routes.LOGIN);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
