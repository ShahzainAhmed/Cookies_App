import 'package:bounce/bounce.dart';
import 'package:coffee_app/resources/app_assets.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/views/home/home_screen.dart';
import 'package:coffee_app/views/onboarding/widgets/bottom_container.dart';
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
          const BottomContainer(),
          Positioned(
            right: -26,
            bottom: -46,
            child: GestureDetector(
              onTap: () => Get.to(const HomeScreen()),
              child: Bounce(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColors.kBrownColor.withOpacity(0.5),
                      radius: 84.r,
                    ),
                    CircleAvatar(
                      backgroundColor: AppColors.kLightBrownColor,
                      radius: 70.r,
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: AppColors.kWhiteColor,
                        size: 36,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
