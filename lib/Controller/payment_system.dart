import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget payBill() {
  return ElevatedButton(
    onPressed: () {
      Get.bottomSheet(Container(
          height: 500,
          width: 300,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Product Details 👇'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Laptop Model: HP 15-fd0205TU Core i5 13th Gen 15.6"',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Price: \$1120",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                    letterSpacing: 1.1,
                  )),
              const SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                  Get.bottomSheet(
                    Container(
                    height: 200,
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(113, 255, 251, 251),
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            Get.snackbar('Payment Successfull', 'By Bkash',
                                snackPosition: SnackPosition.TOP);
                            
                          },
                          leading: const Icon(Icons.payment),
                          title: const Text('Bkash'),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ListTile(
                          onTap: () {
                            Get.snackbar('Payment Successfull', 'By Nogod',
                                snackPosition: SnackPosition.TOP);
                            
                          },
                          leading: const Icon(Icons.payment),
                          title: const Text('Nogod'),
                        ),
                      ],
                    ),
                  ));
                },
                style: ButtonStyle(
                  elevation: const MaterialStatePropertyAll(0),
                  minimumSize:
                      MaterialStateProperty.all<Size>(const Size(180, 55)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(232, 243, 229, 33)),
                ),
                child: const Text(
                  'Pay Bill',
                  style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )));
    },
    style: ButtonStyle(
      elevation: const MaterialStatePropertyAll(0),
      minimumSize: MaterialStateProperty.all<Size>(const Size(300, 55)),
      backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromARGB(232, 243, 229, 33)),
    ),
    child: const Text(
      'Buy Now',
      style: TextStyle(
          fontSize: 18,
          letterSpacing: 1.5,
          color: Colors.white,
          fontWeight: FontWeight.w600),
    ),
  );
}
