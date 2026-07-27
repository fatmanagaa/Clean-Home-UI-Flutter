import 'package:clean_home_ui_flutterr/features/home/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../models/product_item.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductItem> products = [
      ProductItem(
        name: 'Banana',
        image: AppAssets.banana,
        price: r'$3.99',
        rating: '4.8',
        reviews: '(287)',
      ),
      ProductItem(
        name: 'Pepper',
        image: AppAssets.pepper,
        price: r'$2.99',
        rating: '4.8',
        reviews: '(287)',
      ),
    ];

    return SizedBox(
      height: 250.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductCard(product: products[index]);
        },
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
      ),
    );
  }
}

