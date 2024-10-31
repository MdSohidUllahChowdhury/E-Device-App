import 'package:e_device_app/Model/device_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCart extends StatelessWidget {
  CustomCart({super.key,  required this.item});

DeviceModel item;
  @override
  Widget build(BuildContext context) {
    
    return Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(12),
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey.shade400,
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(1, 3)),
                ]),
            child: Row(
              children: [
                Image.asset(
                  item.productPic,
                  height: 100,
                ),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      item.brandName,
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 14, color: Colors.black),
                    ),
                    Text(
                      item.withOfferPrice,
                      style: const TextStyle(
                          fontFamily: 'Bold', fontSize: 12, color: Colors.black),
                    ),
                    const Text(
                      'Reating: ⭐ 4.6',
                      style: TextStyle(
                          fontFamily: 'Bold', fontSize: 10, color: Colors.black),
                    ),
                  ],
                )
              ],
            )
            );
  }
}