import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget payBill(brandName, price) {
  return ElevatedButton(
    onPressed: () {
      Get.bottomSheet(Container(
          height: 400,
          width: 300,
          margin: const EdgeInsets.all(16),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Product Details 👇',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                brandName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.1,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text('Price: $price',
                  style: const TextStyle(
                    fontSize: 14,
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
                      elevation: 15,
                      backgroundColor: Colors.greenAccent,
                      useRootNavigator: true,
                      Container(
                        height: 200,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(25),
                        decoration: const BoxDecoration(
                            //color: Color.fromARGB(113, 255, 251, 251),
                            borderRadius:
                                BorderRadius.all(Radius.circular(24))),
                        child: Column(
                          children: [
                            ListTile(
                              hoverColor: Colors.white,
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
                              hoverColor: Colors.white,
                              onTap: () {
                                Get.snackbar(
                                  'Payment Successfull',
                                  'By UCB Bank',
                                  snackPosition: SnackPosition.TOP,
                                );
                              },
                              leading: const Icon(Icons.payment),
                              title: const Text('UCB Bank'),
                            ),
                          ],
                        ),
                      ));
                },
                style: ButtonStyle(
                  elevation: const WidgetStatePropertyAll(0),
                  minimumSize:
                      WidgetStateProperty.all<Size>(const Size(180, 55)),
                  backgroundColor: WidgetStateProperty.all<Color>(
                      const Color.fromARGB(232, 243, 229, 33)),
                ),
                child: const Text(
                  'Pay Bill',
                  style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.4,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )));
    },
    style: ButtonStyle(
      elevation: const WidgetStatePropertyAll(0),
      minimumSize: WidgetStateProperty.all<Size>(const Size(300, 55)),
      backgroundColor: WidgetStateProperty.all<Color>(
          const Color.fromARGB(232, 243, 229, 33)),
    ),
    child: const Text(
      'Buy Now',
      style: TextStyle(
          fontSize: 18,
          letterSpacing: 1.5,
          color: Colors.black,
          fontWeight: FontWeight.w600),
    ),
  );
}
