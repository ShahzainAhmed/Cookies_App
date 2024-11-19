import 'package:coffee_app/models/small_tile_model.dart';
import 'package:coffee_app/resources/app_assets.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:coffee_app/views/home/widgets/small_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: ListTile(
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
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Text(
              "Cookies",
              style: AppTypography.kLight36.copyWith(
                color: AppColors.kWhiteColor,
                height: 1.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
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
          ),
          SizedBox(height: 100.h),
          SizedBox(
            height: 130.h,
            child: ListView.separated(
              clipBehavior: Clip.none,
              itemCount: smallTilesList.length,
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 16.w),
              itemBuilder: (context, index) {
                return SmallTile(smallTileModel: smallTilesList[index]);
              },
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Offers",
                  style: AppTypography.kLight36.copyWith(
                    color: AppColors.kWhiteColor,
                    height: 1.0,
                  ),
                ),
                Text(
                  "See more",
                  style: AppTypography.kMedium14.copyWith(
                    color: AppColors.kOrangeColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(
              height: 100.h,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.kGreyColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                  bottomRight: Radius.circular(80.r),
                  bottomLeft: Radius.circular(16.r),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
