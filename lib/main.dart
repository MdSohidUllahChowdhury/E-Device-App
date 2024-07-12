import 'package:e_shopping_app/View/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main(){
  runApp(const E_Shopping_App());
}
// ignore: camel_case_types
class E_Shopping_App extends StatelessWidget {
  const E_Shopping_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360,720),
      child:  GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:WelcomeScreen(),
      ),
    );
  }
}