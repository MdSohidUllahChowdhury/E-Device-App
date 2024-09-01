import 'package:e_device_app/Controller/language_controller.dart';
import 'package:e_device_app/View/Intro Screen/spalsh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp((ScreenUtilInit(
    designSize: const Size(360, 720),
    child: GetMaterialApp(
        locale: const Locale('Eng'),
        fallbackLocale: const Locale('Eng'),
        translations: Language(),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        theme: ThemeData(
          useMaterial3: true,
          fontFamily: 'CustomFont')),
  )));
}
