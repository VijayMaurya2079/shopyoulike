import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerImage extends StatelessWidget {
  final String bannerName;
  BannerImage(this.bannerName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.green.withOpacity(0.4),
      splashColor: Colors.green.withOpacity(0.4),
      child: Container(
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.4),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          height: 200,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.6),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(bannerName),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
