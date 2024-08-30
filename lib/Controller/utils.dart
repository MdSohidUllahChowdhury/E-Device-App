import 'package:e_device_app/Widgets/categoris_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils{
   static seeAllAndCategory(){
      return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categoris'.tr,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 1.2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'See'.tr,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              );
   }

  static iconOfCategory(){
    return const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategorisIcon(icons: Icon(Icons.watch)),
                    CategorisIcon(icons: Icon(Icons.shopping_basket_rounded)),
                    CategorisIcon(icons: Icon(Icons.phone_android_sharp)),
                    CategorisIcon(icons: Icon(Icons.bike_scooter)),
                    CategorisIcon(icons: Icon(Icons.laptop)),
                    CategorisIcon(icons: Icon(Icons.shopping_basket_rounded)),
                    CategorisIcon(icons: Icon(Icons.phone_android_sharp)),
                    CategorisIcon(icons: Icon(Icons.bike_scooter)),
                    CategorisIcon(icons: Icon(Icons.laptop)),
                  ],
                ),
              );
  }
}