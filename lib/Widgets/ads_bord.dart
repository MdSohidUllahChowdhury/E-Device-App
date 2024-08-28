import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdsBord extends StatelessWidget {
  const AdsBord({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> slidercontend = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9uOLe6qkFSDc48cLCjsWInqWrLSkiB7IDNj8CUVgTbQ&s',
      'https://cdn.dribbble.com/users/2951446/screenshots/6361953/smuti-slider_still_2x.gif?resize=400x0',
      'https://3.bp.blogspot.com/-LKgDoJZfEyU/UBKXUIALobI/AAAAAAAAAjk/dafHbDYzH_w/s1600/healthy+food.jpg',
      'https://ucarecdn.com/1579f3d3-4ab2-40a9-9015-679d18eeeadb/-/crop/1630x918/1,0/-/preview/-/quality/lighter/-/format/auto/-/scale_crop/1920x1080/center/',
    ];
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 160,
        aspectRatio: 16 / 9,
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
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: NetworkImage(slidercontend[index]), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
