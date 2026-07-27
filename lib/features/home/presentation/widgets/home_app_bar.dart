import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_styles.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: Row(
        children: [
          Image.asset(
            AppAssets.iconAppBar1,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(width: 8.w),
          Text(
            '61 Hopper street..',
            style: AppStyles.font14MediumDark.copyWith(
              fontSize: 14.sp,
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 20.sp,
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Image.asset(
              AppAssets.iconAppBar2,
              width: 20.w,
              height: 20.h,
            ),
          ),
        ],
      ),
    );
  }
}
