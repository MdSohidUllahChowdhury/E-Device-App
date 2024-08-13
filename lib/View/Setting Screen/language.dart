import 'package:e_shopping_app/View/Main%20Screen/mainscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget language() {
  return Container(
    height: 320,
    width: 250,
    decoration: BoxDecoration(
      color: const Color.fromARGB(211, 255, 255, 255),
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Change Language',
          style: TextStyle(
              fontSize: 20, letterSpacing: 2, fontWeight: FontWeight.w700),
        ),
        const Divider(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('Ban'));
                Get.to(const MainScreen());
              },
              style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(80, 45)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: const Text(
                'Bangla',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.updateLocale(const Locale('Eng'));
                Get.to(const MainScreen());
              },
              style: ButtonStyle(
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(80, 45)),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
              ),
              child: const Text(
                'English',
                style: TextStyle(fontSize: 12, color: Colors.black),
              ),
            )
          ],
        )
      ],
    ),
  );
}