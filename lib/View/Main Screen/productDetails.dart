// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(167, 243, 203, 203),
      body:Container(
        padding:const EdgeInsets.all(6),
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: IconButton(
                onPressed:() => Get.back(),
                 icon:const Icon(Icons.keyboard_double_arrow_up)),
            ),

             Image.asset('lib/Assets/Images/laptop.png',
                  height:300,
                  width: double.infinity,),

             const Text('HP 15-fd0205TU Core i5 13th Gen 15.6"',
             
                  style:TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    letterSpacing: 1.1,
                   ) ,
                  ),
                
                const SizedBox(height:6),
                
                const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 10),
                   child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text("\$1120",
                        textAlign: TextAlign.left,
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          letterSpacing: 1.1,
                         ) ,
                        ),
                        Text("\$1420",
                        textAlign: TextAlign.left,
                        style:TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(178, 0, 0, 0),
                          letterSpacing: 1.1,
                          decoration: TextDecoration.lineThrough
                         ) ,
                        ),
                      ],
                    ),
                 ),
             const SizedBox(height:10),   
             const Text('Key Features\nMPN: 973R0PA\nModel: 15-fd0205TU\nProcessor: Intel Core i5-1335U (up to 4.6 GHz, 12 MB L3 cache)\nRAM: 8 GB DDR4 3200MHz, Storage: 512GB PCIe M.2 SSD\nDisplay: 15.6" FHD (1920 x 1080)\nFeatures: Type-C, Wi-Fi 6, Privacy Shutter, Mic Mute Key',
                  style:TextStyle(
                    fontSize:9.6,
                    fontWeight: FontWeight.w800,
                    color: Color.fromARGB(186, 0, 0, 0),
                    letterSpacing: 1.1,
                   ) ,
                  ), 
            const SizedBox(height: 15),
            
            ElevatedButton(
             onPressed:(){},
             style: ButtonStyle(
             elevation:const MaterialStatePropertyAll(0),
             minimumSize: MaterialStateProperty.all<Size>(const Size(300, 55)),
             backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromARGB(232, 243, 229, 33)),
           ),

          child:const Text('Buy Now',
          style: TextStyle(
            fontSize: 14,
            color:Colors.white,
            fontWeight: FontWeight.w600),
          ),
          ),            
          ],
        ),
      ),
    );
  }
}