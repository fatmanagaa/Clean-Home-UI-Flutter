import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyles {
  // Address Location (Top App Bar)
  static final TextStyle font14MediumDark = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color:AppColors.textPrimaryBlack,
  );

  // Banner Main Heading ("Up to 30% offer")
  static const TextStyle font20BoldBlack = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryBlack,
  );

  // Banner Subtitle ("Enjoy our big offer")
  static const TextStyle font12BoldGreen = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryGreen,
  );

  // Banner Button Text ("Shop Now")
  static const TextStyle font12SemiBoldWhite = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color:AppColors.backgroundWhite,
  );

  // Category Items Label ("Fruits", "Milk & egg"...)
  static const TextStyle font12MediumGrey = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  // Section Header Title ("Fruits")
  static const TextStyle font18BoldBlack = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryBlack,
  );

  // Section Header Action ("See all")
  static const TextStyle font14SemiBoldGreen = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xFF00A638),
  );

  // Product Card Title ("Banana", "Pepper")
  static const TextStyle font16BoldBlack = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Color(0xFF1E1E1E),
  );

  // Product Rating & Review Count ("4.8 (287)")
  static const TextStyle font12RegularGrey = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xFF7C7C7C),
  );

  // Product Price ("$3.99")
  static const TextStyle font16BoldDark = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Color(0xFF1E1E1E),
  );

  // Bottom Navigation Active Text ("Home")
  static const TextStyle font11MediumGreen = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: Color(0xFF00A638),
  );

  // Bottom Navigation Inactive Text ("Favourite", "Search"...)
  static const TextStyle font11MediumGrey = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: Color(0xFF8E8E93),
  );
}