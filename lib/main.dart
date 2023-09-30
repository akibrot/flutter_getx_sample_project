import 'package:flutter/material.dart';
import 'package:flutter_getx_sample_project/app/routes/app_pages.dart';
import 'package:get/get.dart';

void main() {
  // await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
}
