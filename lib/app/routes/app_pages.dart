import 'package:flutter_getx_sample_project/app/modules/login/login_binding.dart';
import 'package:flutter_getx_sample_project/app/modules/login/login_view.dart';
import 'package:get/get.dart';

import 'package:flutter_getx_sample_project/app/modules/splash/splash_binding.dart';
import 'package:flutter_getx_sample_project/app/modules/splash/splash_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
