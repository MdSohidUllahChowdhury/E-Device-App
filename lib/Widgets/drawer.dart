import 'package:e_device_app/View/Intro Screen/login.dart';
import 'package:e_device_app/View/Setting%20Screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget  customDrawer(){
 return Drawer(
  elevation: 50,
  backgroundColor: const Color.fromARGB(209, 189, 167, 167),
  width: 225,
  child: Column(
   children: [
    const SizedBox(height: 20),

    const CircleAvatar(
      radius:60,
      child: Icon(Icons.person_3,size: 50,),
    ),
    
    const SizedBox(height: 80,),
     
     ListTile(
       onTap: () => Get.back(),
       leading:const Icon(Icons.home_filled),
       title:const  Text('H o m e'),
       hoverColor:Colors.white ,
       
     ),
     
     ListTile(
       onTap:()=>Get.bottomSheet(
         language()
       ),
       leading:Icon(
         Icons.language_rounded,
         color: Colors.greenAccent.shade400),
         title:const  Text('L a n g u a g e'),
         hoverColor:Colors.white ,
     ),
     ListTile(
       onTap: () => Get.back(),
       leading:const Icon(Icons.settings),
       title:const  Text('S e t t i n g'),
       hoverColor:Colors.white ,
     ),

     ListTile(
       onTap: () => Get.offAll(const Login()),
       leading:const Icon(Icons.logout_outlined),
       title:const  Text('L o g  O u t'),
       hoverColor:Colors.white ,
     ),
   ],
 )
 );
}