import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';

class ProductItem {
  final String name;
  final String image;
  final String price;
  final String rating;
  final String reviews;

  ProductItem({
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.reviews,
  });
}

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
      // Since Orange is missing in assets, I'll repeat Banana or use another asset.
      // But I should try to follow the UI. I'll just use Banana again but label it Orange for illustration if I had the asset.
      // Actually I'll just show two as per assets available.
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

class ProductCard extends StatelessWidget {
  final ProductItem product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3F3F3),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12.r),
                  child: Image.asset(product.image),
                ),
              ),
              Positioned(
                bottom: 8.h,
                right: 8.w,
                child: Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.add,
                    size: 20.sp,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: AppStyles.font16BoldBlack.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 14.sp),
                    SizedBox(width: 4.w),
                    Text(
                      '${product.rating} ${product.reviews}',
                      style: AppStyles.font12RegularGrey.copyWith(
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Text(
                  product.price,
                  style: AppStyles.font16BoldDark.copyWith(
                    fontSize: 16.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
