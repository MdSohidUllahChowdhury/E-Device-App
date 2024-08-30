import 'package:e_device_app/Controller/counter_laptop.dart';
import 'package:e_device_app/Controller/payment_system.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  final String productImage,brandName,offerPrice,noOfferPrice;
  const ProductDetails({super.key, 
  required this.productImage, 
  required this.brandName, 
  required this.offerPrice, 
  required this.noOfferPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:Container(
        padding:const EdgeInsets.all(6),
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
           IconButton(
             onPressed:() => Get.back(),
              icon:const Icon(Icons.keyboard_double_arrow_up)
              ),

             Image.asset(productImage,
                  height:250,
                  ),

             Text(brandName,
             
                  style:const TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    letterSpacing: 1.1,
                   ) ,
                  ),
                
                const SizedBox(height:10),
                
                Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Text(offerPrice,
                        textAlign: TextAlign.left,
                        style:const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          letterSpacing: 1.1,
                         ) ,
                        ),
                        Text(noOfferPrice,
                        textAlign: TextAlign.left,
                        style:const TextStyle(
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
            
            const Divider(height:15),
             
             
             const Text('Key Features\n\nMPN: 973R0PA\nModel: 15-fd0205TU\nProcessor: Intel Core i5-1335U (up to 4.6 GHz, 12 MB L3 cache)\nRAM: 8 GB DDR4 3200MHz, Storage: 512GB PCIe M.2 SSD\nDisplay: 15.6" FHD (1920 x 1080)\nFeatures: Type-C, Wi-Fi 6, Privacy Shutter, Mic Mute Key',
                  style:TextStyle(
                    fontSize:9.6,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(186, 0, 0, 0),
                    letterSpacing: 1.1,
                   ) ,
                  ), 
            
            const SizedBox(height:10),
            quantity(),
            const SizedBox(height:30),
            payBill(brandName, offerPrice)           
          ],
        ),
      ),
    );
  }
}