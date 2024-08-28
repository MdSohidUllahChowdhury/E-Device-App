import 'package:e_shopping_app/Controller/utils.dart';
import 'package:e_shopping_app/Model/divice_model.dart';
import 'package:e_shopping_app/View/Main%20Screen/productDetails.dart';
import 'package:e_shopping_app/View/Setting%20Screen/profile.dart';
import 'package:e_shopping_app/Widgets/ads_bord.dart';
import 'package:e_shopping_app/Widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
        productPic: 'lib/Assets/Images/laptop.png',
        brandName: 'HP Note Book A02',
        withOutOfferPrice: '\$16,800',
        withOfferPrice: '\$14,800',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/laptop.png',
        brandName: 'Mac Note Book M4',
        withOutOfferPrice: '\$16,800',
        withOfferPrice: '\$14,800',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/laptop.png',
        brandName: 'HP Note Book A02',
        withOutOfferPrice: '\$16,800',
        withOfferPrice: '\$14,800',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/laptop.png',
        brandName: 'Mac Note Book M4',
        withOutOfferPrice: '\$16,800',
        withOfferPrice: '\$14,800',
      ),
      DeviceModel(
        productPic: 'lib/Assets/Images/laptop.png',
        brandName: 'HP Note Book A02',
        withOutOfferPrice: '\$16,800',
        withOfferPrice: '\$14,800',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Get.snackbar(
                  'Developing Mood', 'Currently Working on this Option');
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              Get.to(const ProfileSet());
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      drawer: customDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Wel'.tr,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                "Sub".tr,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(136, 0, 0, 0),
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20),
              const AdsBord(),
              const SizedBox(height: 15),
              Utils.seeAllAndCategory(),
              const SizedBox(height: 15),
              Utils.iconOfCategory(),
              const SizedBox(height: 15),
              GridView.builder(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  color:
                                      const Color.fromARGB(253, 255, 255, 255),
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
                                onPressed: () {},
                                icon: const Icon(Icons.favorite_border))
                          ],
                        ),
                      ]),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}