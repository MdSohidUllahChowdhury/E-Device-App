import 'package:e_shopping_app/View/Setting%20Screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget  customDrawer (){
 return Drawer(
    backgroundColor: Colors.grey.shade400,
    child:  Column(
      children: [
       const SizedBox(height: 150,),
        
        ListTile(
          onTap: () => Get.back(),
          leading:const Icon(Icons.home_filled),
          title:const  Text('H o m e'),
        ),
        
        ListTile(
          onTap:()=>Get.bottomSheet(
            language()
          ),
          leading:const Icon(Icons.language_rounded),
          title:const  Text('L a n g u a g e'),
        ),
        ListTile(
          onTap: () => Get.back(),
          leading:const Icon(Icons.settings),
          title:const  Text('S e t t i n g'),
        ),
      ],
    ),
  );
}