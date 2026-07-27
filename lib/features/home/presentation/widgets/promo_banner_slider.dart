import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_assets.dart';

class PromoBannerSlider extends StatelessWidget {
  const PromoBannerSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      AppAssets.slider1,
      AppAssets.slider2,
      AppAssets.slider3,
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 160.h,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
      items: banners.map((banner) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.r),
              child: Image.asset(
                banner,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
