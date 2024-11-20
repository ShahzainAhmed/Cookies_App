import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(left: 24.w, right: 70.w, top: 30.h),
        height: Get.height * 0.45,
        width: Get.width,
        decoration: const BoxDecoration(
          color: AppColors.kOnboardingColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Get A",
                  style: AppTypography.kExtraBold46
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                Container(
                  height: 30.h,
                  width: 126.w,
                  decoration: BoxDecoration(
                    color: AppColors.kBrownColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(50.r),
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(14.r),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: AppColors.kBrownColor,
                    borderRadius: BorderRadius.circular(50.r),
                  ),
                ),
                Text(
                  "Craving",
                  style: AppTypography.kExtraBold46
                      .copyWith(color: AppColors.kWhiteColor),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Grab A",
                  style: AppTypography.kExtraBold46
                      .copyWith(color: AppColors.kWhiteColor),
                ),
                Container(
                  height: 30.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: AppColors.kBrownColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.r),
                      topRight: Radius.circular(50.r),
                      bottomLeft: Radius.circular(30.r),
                      bottomRight: Radius.circular(10.r),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "Cookie!",
              style: AppTypography.kExtraBold46
                  .copyWith(color: AppColors.kWhiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
