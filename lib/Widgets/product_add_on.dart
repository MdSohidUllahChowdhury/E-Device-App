import 'package:e_shopping_app/Model/divice_model.dart';
import 'package:e_shopping_app/View/Main%20Screen/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductAddON extends StatelessWidget {
  const ProductAddON({super.key});

  @override
  Widget build(BuildContext context) {
    List<DeviceModel> product = [
      DeviceModel(
        productPic: 'lib/Assets/Images/laptop.png',
        brandName: 'Mac Note Book M4',
        withOutOfferPrice: '\$16,800',
        withOfferPrice: '\$14,800',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/S24.png',
        brandName: 'Sumsung S24 Ultra',
        withOutOfferPrice: '\$1,800',
        withOfferPrice: '\$1,699',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/13pro.png',
        brandName: 'Iphone 13 pro',
        withOutOfferPrice: '\$1,599',
        withOfferPrice: '\$1,499',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/13.png',
        brandName: 'Iphone 13',
        withOutOfferPrice: '\$1,499',
        withOfferPrice: '\$1,399',
      ),
    ];
    return GridView.builder(
      itemCount: product.length,
      shrinkWrap: true,
      primary: false,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          mainAxisSpacing: 4,
          childAspectRatio: .9),
      itemBuilder: (context, index) {
        final iteam = product[index];
        return InkWell(
          onTap: () => Get.to(const ProductDetails()),
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(209, 189, 167, 167),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    iteam.productPic,
                    height: 140,
                    width: double.infinity,
                  ),
                  Text(
                    iteam.brandName,
                    style: const TextStyle(
                      fontSize: 12.5,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 1.1,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          iteam.withOfferPrice,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            letterSpacing: 1.1,
                          ),
                        ),
                        Text(
                          iteam.withOutOfferPrice,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(178, 0, 0, 0),
                              letterSpacing: 1.1,
                              decoration: TextDecoration.lineThrough),
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
                    margin: const EdgeInsets.all(8),
                    height: 13,
                    width: 90,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(253, 255, 255, 255),
                        borderRadius: BorderRadius.circular(16)),
                    child: const Text(
                      '23% Discount',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                        color: Colors.redAccent,
                        letterSpacing: 1.1,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.favorite_border))
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}
