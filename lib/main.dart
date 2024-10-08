import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/getx_localization/languages.dart';
import 'package:getx_api/res/routes/app_routes.dart';
import 'package:getx_api/view/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      home: const SplashView(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
