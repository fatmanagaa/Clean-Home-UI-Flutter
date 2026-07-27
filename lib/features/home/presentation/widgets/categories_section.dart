import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';

class CategoryItem {
  final String name;
  final String image;

  CategoryItem({required this.name, required this.image});
}

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryItem> categories = [
      CategoryItem(name: 'Fruits', image: AppAssets.frame1),
      CategoryItem(name: 'Milk & egg', image: AppAssets.frame2),
      CategoryItem(name: 'Beverages', image: AppAssets.frame3),
      CategoryItem(name: 'Laundry', image: AppAssets.frame4),
      CategoryItem(name: 'Vegetables', image: AppAssets.frame5),
    ];

    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Image.asset(
                    categories[index].image,
                    width: 40.w,
                    height: 40.h,
                  ),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                categories[index].name,
                style: AppStyles.font12MediumGrey.copyWith(
                  fontSize: 12.sp,
                ),
              ),
            ],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 20.w),
      ),
    );
  }
}
