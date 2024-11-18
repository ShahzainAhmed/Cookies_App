import 'package:coffee_app/resources/app_assets.dart';
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
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 22.r,
                foregroundImage: const AssetImage(AppAssets.kProfilePic),
              ),
              title: Text(
                "Shahzain",
                style: AppTypography.kMedium16
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              subtitle: Text(
                "Ahmed",
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
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
                top: 20.h,
                bottom: 10.h,
              ),
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
                    style: AppTypography.kLight16
                        .copyWith(color: AppColors.kWhiteColor),
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
