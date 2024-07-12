import 'package:e_shopping_app/View/login.dart';
import 'package:e_shopping_app/Widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
         const Text('Create Account',
          style: TextStyle(
            fontSize: 27,
            color: Color.fromARGB(232, 33, 149, 243),
            fontWeight: FontWeight.bold,
           ),
          ),
          
          const SizedBox(height: 15),

          const Text("Create an account so you can explore all the\n                        existing jobs",
           style: TextStyle(
            fontSize: 9,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.4
           ),
          ),

          const SizedBox(height: 55),
          const SectionName(nameit: 'Email'),
          const SizedBox(height: 25),
          const SectionName(nameit: 'Password'),
          const SizedBox(height: 25),
          const SectionName(nameit: 'Confirm Password'),
          const SizedBox(height:25),
          
          ElevatedButton(
          onPressed: (){
             
            }, 
             style: ButtonStyle(
             elevation:const MaterialStatePropertyAll(0),
             minimumSize: MaterialStateProperty.all<Size>(const Size(300, 55)),
             backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(232, 33, 149, 243)),
           ),
          
          child:const Text('Sing Up',
          style: TextStyle(
            fontSize: 14,
            color:Colors.white,
            fontWeight: FontWeight.w600),
           ),
          ),
          const SizedBox(height:16),
          TextButton(
            onPressed:() => Get.to(const Login()),
            child:const Text('Already have an account',
            style: TextStyle(
              fontSize: 9,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.4
            ),
            ),
            ),
        ],
      ),
    );
  }
}