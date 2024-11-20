import 'package:bounce/bounce.dart';
import 'package:coffee_app/resources/app_assets.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    return Scaffold(
      backgroundColor: AppColors.kWhiteColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: Get.height * 0.65,
            width: Get.width,
            child: Image.asset(AppAssets.kOnboarding, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(left: 24.w, right: 70.w, top: 30.h),
              height: Get.height * 0.45,
              width: Get.width,
              decoration: const BoxDecoration(
                color: AppColors.kOnboardingColor,
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
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
          ),
          Positioned(
            right: -22,
            bottom: -40,
            child: Bounce(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: AppColors.kBrownColor.withOpacity(0.5),
                    radius: 80.r,
                  ),
                  CircleAvatar(
                    backgroundColor: AppColors.kLightBrownColor,
                    radius: 70.r,
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.kWhiteColor,
                      size: 36,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/* 
 // PrimaryButton(
                  //   onTap: () => Get.to(const HomeScreen()),
                  //   text: "Browse Collection",
                  //   color: AppColors.kWhiteColor,
                  //   textColor: AppColors.kLightBlackColor,
                  // ),
 */