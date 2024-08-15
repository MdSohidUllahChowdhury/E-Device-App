import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_shopping_app/Widgets/categorisIcon.dart';
import 'package:e_shopping_app/Widgets/drawer.dart';
import 'package:e_shopping_app/Widgets/productCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

   List<String> slidercontend = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9uOLe6qkFSDc48cLCjsWInqWrLSkiB7IDNj8CUVgTbQ&s',
    'https://cdn.dribbble.com/users/2951446/screenshots/6361953/smuti-slider_still_2x.gif?resize=400x0',
    'https://3.bp.blogspot.com/-LKgDoJZfEyU/UBKXUIALobI/AAAAAAAAAjk/dafHbDYzH_w/s1600/healthy+food.jpg',
    'https://ucarecdn.com/1579f3d3-4ab2-40a9-9015-679d18eeeadb/-/crop/1630x918/1,0/-/preview/-/quality/lighter/-/format/auto/-/scale_crop/1920x1080/center/',
   ];
   
    return Scaffold(
      backgroundColor:const Color.fromARGB(113, 255, 251, 251),
      
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        

         actions: [
          IconButton(
         onPressed: (){},
         icon:const Icon(Icons.search),
         ),
         IconButton(
         onPressed: (){},
         icon:const Icon(Icons.person),
         ),
         ],
      ), 

      drawer:customDrawer(),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal:8),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
               Text('Wel'.tr,
              style:const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1.1,
               ) ,
              ),
              
               Text("Sub".tr,
              style:const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(136, 0, 0, 0),
                letterSpacing: 1.1,
               ) ,
              ),
              
              const SizedBox(height: 20),
        
              CarouselSlider.builder(
               options: CarouselOptions(
                height: 170,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,  
                scrollDirection: Axis.horizontal,
              ),
              itemCount: slidercontend.length,
              itemBuilder:(context, index, realIndex) => 
                Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image:NetworkImage(slidercontend[index]),
                    fit: BoxFit.cover),
                ),
               ) ,
             ),
              
              const SizedBox(height: 15),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('Categoris'.tr,
                style:const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 1.1,
               ) ,
              ),
               
               GestureDetector(
                onTap: (){},
                child:  Text('See'.tr,
                style:const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.blue,
                  letterSpacing: 1.1,
                 ) ,
                ),
               ),
              ],
            ),
              
              const SizedBox(height: 15),
              
              const SingleChildScrollView(
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
              ),
        
            const SizedBox(height: 15),
           
            GridView.builder(
              itemCount:15,
              shrinkWrap: true,
              primary: false,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 4,
              childAspectRatio: .9
              ),
              itemBuilder:(context, index) {
                return const Productcard();
              },
             )
            ],
          ),
        ),
      ),
    );
  }
}