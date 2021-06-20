import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopyoulike/widgets/banner.dart';

class HomeScreenSlider extends StatelessWidget {
  final Axis direction;
  final List list;
  final Duration autoPlayInterval;

  HomeScreenSlider(this.direction, this.list, this.autoPlayInterval);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        autoPlayInterval: autoPlayInterval,
        pageSnapping: true,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        viewportFraction: 0.99,
        scrollDirection: direction,
      ),
      items: list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return BannerImage(i);
          },
        );
      }).toList(),
    );
  }
}
