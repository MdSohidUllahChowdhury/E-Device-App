import 'package:e_shopping_app/View/Intro Screen/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    
    super.initState();
    splashscreen();

  }
   splashscreen() async {
   await Future.delayed(
   const Duration(seconds:2),
   (){}
   );
   Get.offAll(const WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.grey.shade300,
      body: const Center(
        child: Text('MONEY OR LOVE\nBRAIN OR HEART',
        style:TextStyle(
          color: Color.fromARGB(232, 33, 149, 243),
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.4
        ) ,),
      ),
    );
  }
}