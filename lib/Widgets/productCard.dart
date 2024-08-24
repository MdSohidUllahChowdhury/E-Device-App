// ignore_for_file: file_names

import 'package:e_shopping_app/View/Main%20Screen/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Productcard extends StatelessWidget {
  const Productcard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(const ProductDetails()),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(209, 189, 167, 167),
            borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children:[ 
                
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/Assets/Images/laptop.png',
                  height:140,
                  width: double.infinity,),
                  
                  const Text('HP M15 (New Edition)',
                  style:TextStyle(
                    fontSize:12.5,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    letterSpacing: 1.1,
                   ) ,
                  ),
                
                const SizedBox(height:2),
                
                const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 10),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$1120",
                        textAlign: TextAlign.left,
                        style:TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          letterSpacing: 1.1,
                         ) ,
                        ),
                        Text("\$1420",
                        textAlign: TextAlign.left,
                        style:TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(178, 0, 0, 0),
                          letterSpacing: 1.1,
                          decoration: TextDecoration.lineThrough
                         ) ,
                        ),
                      ],
                    ),
                 ),
                ],
              ),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin:const EdgeInsets.all(8),
                      height:13,
                      width: 90,
                      decoration: BoxDecoration(
                        color:const Color.fromARGB(253, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16)
                      ),
                     child:  const Text('50% Discount',
                     textAlign: TextAlign.center,
                    style:TextStyle(
                      fontSize:9,
                      fontWeight: FontWeight.w600,
                      color: Colors.redAccent,
                      letterSpacing: 1.1,
                     ) ,
                    ),
                    ),
                  
                  IconButton(
                    onPressed:(){
                      
                    },
                    icon:const Icon(Icons.favorite_border)
                    )
                ],
              ),
             ]
            ),
         ),
    );
     }
    }
