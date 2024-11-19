import 'package:coffee_app/resources/app_assets.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallTile extends StatelessWidget {
  const SmallTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 10.h),
      height: 130.h,
      width: 140.w,
      decoration: BoxDecoration(
        color: AppColors.kGreyColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.r),
          topRight: Radius.circular(16.r),
          bottomRight: Radius.circular(80.r),
          bottomLeft: Radius.circular(16.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Chocolate chips",
            style:
                AppTypography.kLight16.copyWith(color: AppColors.kWhiteColor),
          ),
          Row(
            children: [
              const Icon(
                Icons.diamond,
                color: AppColors.kOrangeColor,
                size: 20,
              ),
              SizedBox(width: 6.w),
              Text(
                "PREMIUM",
                style: AppTypography.kLight12.copyWith(
                  color: AppColors.kOrangeColor,
                ),
              ),
            ],
          ),
          Text(
            "20 USD",
            style:
                AppTypography.kLight16.copyWith(color: AppColors.kWhiteColor),
          ),
        ],
      ),
    );
  }
}
