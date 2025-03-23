import 'package:e_device_app/Controller/counter_laptop.dart';
import 'package:e_device_app/Widgets/payment_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  final String productImage, brandName, offerPrice, noOfferPrice;
  const ProductDetails(
      {super.key,
      required this.productImage,
      required this.brandName,
      required this.offerPrice,
      required this.noOfferPrice});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE3F0A3),
      body: Container(
        padding: const EdgeInsets.all(6),
        margin: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.keyboard_double_arrow_up)),
            Animate(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * .25,
                child: Image.asset(
                  productImage,
                  height: 250,
                ),
              ),
            )
                .animate(autoPlay: true, delay: const Duration(seconds: 2))
                .shimmer(
                    curve: const Split(BorderSide.strokeAlignCenter),
                    duration: const Duration(seconds: 3)),
            Text(
              brandName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: MediaQuery.sizeOf(context).height * .35,
              decoration: const BoxDecoration(
                  color: Color(0xff42D674),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 74, 75, 73),
                        blurStyle: BlurStyle.normal,
                        blurRadius: 8,
                        offset: Offset(8, 4))
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          offerPrice,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: 1.1,
                          ),
                        ),
                        Text(
                          noOfferPrice,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent,
                              letterSpacing: 1.1,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 25,
                    color: Colors.white,
                    thickness: 13,
                  ),
                  const Divider(
                    color: Colors.redAccent,
                    thickness: 13,
                  ),
                  const Text(
                    ' \nKey Features :\n\n MPN: 973R0PA\n Model: 15-fd0205TU\n Processor: Intel Core i5-1335U (up to 4.6 GHz, 12 MB L3 cache)\n RAM: 8 GB DDR4 3200MHz, Storage: 512GB PCIe M.2 SSD\n Display: 15.6" FHD (1920 x 1080)\n Features: Type-C, Wi-Fi 6, Privacy Shutter, Mic Mute Key',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(186, 0, 0, 0),
                      letterSpacing: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            quantity(),
            const Expanded(child: SizedBox(height: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                payBill(brandName, offerPrice, productImage),
                CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  radius: 26,
                  child: IconButton(
                      onPressed: () {
                        Get.snackbar('Added to the cart', 'Favorit item added',
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor:
                                const Color.fromARGB(209, 189, 167, 167));
                      },
                      icon:
                          const Icon(Icons.shopping_cart, color: Colors.white)),
                )
              ],
            ),
            const SizedBox(height: 15)
          ],
        ),
      ),
    );
  }
}
