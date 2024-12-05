import 'package:animate_do/animate_do.dart';
import 'package:coffee_app/models/tile_model.dart';
import 'package:coffee_app/resources/app_assets.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:coffee_app/utils/app_state.dart';
import 'package:coffee_app/views/detail%20screen/detail_screen.dart';
import 'package:coffee_app/views/home/widgets/large_tile.dart';
import 'package:coffee_app/views/home/widgets/small_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int productCount = appState.product;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FadeInUp(
                    duration: const Duration(milliseconds: 600),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 22.r,
                          foregroundImage:
                              const AssetImage(AppAssets.kProfilePic),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shahzain",
                              style: AppTypography.kMedium16
                                  .copyWith(color: AppColors.kWhiteColor),
                            ),
                            Text(
                              "Ahmed",
                              style: AppTypography.kLight14
                                  .copyWith(color: AppColors.kWhiteColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  FadeInUp(
                    duration: const Duration(milliseconds: 640),
                    child: Container(
                      height: 60.h,
                      width: 64.w,
                      decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(14.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(productCount.toString(),
                              style: AppTypography.kExtraBold22),
                          Text("Products", style: AppTypography.kMedium10),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 600),
                child: Text(
                  "Cookies",
                  style: AppTypography.kLight36.copyWith(
                    color: AppColors.kWhiteColor,
                    height: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 580),
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
            ),
            SizedBox(height: 100.h),
            SizedBox(
              height: 130.h,
              child: ListView.separated(
                clipBehavior: Clip.none,
                itemCount: tilesDataList.length,
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 16.w),
                itemBuilder: (context, index) {
                  return FadeInUp(
                    duration: const Duration(milliseconds: 540),
                    child: SmallTile(
                      onTap: () => Get.to(
                          () => DetailScreen(tileModel: tilesDataList[index])),
                      smallTileModel: tilesDataList[index],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: FadeInUp(
                duration: const Duration(milliseconds: 580),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
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
            ),
            FadeInUp(
              duration: const Duration(milliseconds: 500),
              child: ListView.separated(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                clipBehavior: Clip.none,
                separatorBuilder: (context, index) => SizedBox(height: 24.h),
                physics: const ClampingScrollPhysics(),
                reverse: true,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: tilesDataList.length,
                itemBuilder: (context, index) {
                  return LargeTile(
                    tileModel: tilesDataList[index],
                    onTap: () => Get.to(
                      () => DetailScreen(tileModel: tilesDataList[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
