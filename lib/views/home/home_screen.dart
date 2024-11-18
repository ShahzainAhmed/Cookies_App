import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(radius: 22.r),
              title: Text(
                "James",
                style: AppTypography.kMedium16
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              subtitle: Text(
                "Figueroa",
                style: AppTypography.kLight14
                    .copyWith(color: AppColors.kWhiteColor),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Cookies",
              style: AppTypography.kLight36.copyWith(
                color: AppColors.kWhiteColor,
                height: 1.0,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Premium",
                  style: AppTypography.kLight28.copyWith(
                    color: AppColors.kOrangeColor,
                    height: 0,
                  ),
                ),
                Text(
                  "See more",
                  style: AppTypography.kMedium14.copyWith(
                    color: AppColors.kOrangeColor,
                  ),
                )
              ],
            ),
            SizedBox(height: 20.h),
            Container(
              padding: const EdgeInsets.all(20),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chocolate chips",
                    style: AppTypography.kLight16
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
