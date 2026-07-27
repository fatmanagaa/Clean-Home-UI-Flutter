import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/promo_banner_slider.dart';
import '../widgets/categories_section.dart';
import '../widgets/section_header.dart';
import '../widgets/products_section.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              SizedBox(height: 10.h),
              const PromoBannerSlider(),
              SizedBox(height: 20.h),
              const CategoriesSection(),
              SizedBox(height: 10.h),
              const SectionHeader(title: 'Fruits'),
              SizedBox(height: 15.h),
              const ProductsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
