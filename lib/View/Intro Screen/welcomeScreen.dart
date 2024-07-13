// ignore_for_file: file_names
import 'package:e_shopping_app/View/Intro Screen/login.dart';
import 'package:e_shopping_app/View/Intro Screen/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         
          Image.asset('lib/Assets/man.png',
          height: 250,
          width: double.infinity,
          ),
          const SizedBox(height: 30),
          const Text('Discover Your\nDream Job Here',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 27,
            color: Color.fromARGB(232, 33, 149, 243),
            fontWeight: FontWeight.bold,
            letterSpacing: 1.4
          ),
          ),
          const SizedBox(height:15),
          const Center(
            child: Center(
              child: Text('Explore all the existing job roles based on your\ninterest and study major',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 9,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.4
              ),),
            ),
          ),
          const SizedBox(height: 45),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
      
            ElevatedButton(
             onPressed:() => Get.to(const Login()),
             style: ButtonStyle(
             elevation:const MaterialStatePropertyAll(0),
             minimumSize: MaterialStateProperty.all<Size>(const Size(140, 45)),
             backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(232, 33, 149, 243)),
              ),
             child:const Text('Login',
              style: TextStyle(
              fontSize: 14,
              color:Colors.white,
              fontWeight: FontWeight.bold),
              ),
            ),

           ElevatedButton(
             onPressed:() => Get.to(const Register()),
             style: ButtonStyle(
             elevation:const MaterialStatePropertyAll(0),
             minimumSize: MaterialStateProperty.all<Size>(const Size(140, 45)),
             backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(232, 187, 190, 192)),
              ),
             child:const Text('Register',
              style: TextStyle(
              fontSize: 14,
              color:Colors.black,
              fontWeight: FontWeight.bold),
              ),
            ),

            ],
          )
        ],
      ),
    );
  }
}