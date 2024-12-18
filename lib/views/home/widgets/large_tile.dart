import 'package:coffee_app/models/tile_model.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LargeTile extends StatelessWidget {
  final VoidCallback onTap;
  final TileModel tileModel;
  const LargeTile({super.key, required this.tileModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(right: 50.w, top: 16.h, bottom: 16.h),
          height: 96.h,
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
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(tileModel.image),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tileModel.title.replaceFirst(" ", "\n"),
                        style: AppTypography.kLight16
                            .copyWith(color: AppColors.kWhiteColor, height: 0),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          const Icon(
                            Icons.diamond,
                            color: AppColors.kOrangeColor,
                            size: 20,
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            tileModel.category,
                            style: AppTypography.kMedium12.copyWith(
                              color: AppColors.kOrangeColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${tileModel.oldPrice} USD",
                          style: AppTypography.kLight14.copyWith(
                            color: AppColors.kWhiteColor,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.kWhiteColor,
                          ),
                        ),
                        Text(
                          "${tileModel.price} USD",
                          style: AppTypography.kBold14
                              .copyWith(color: AppColors.kWhiteColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                right: -40,
                bottom: -20,
                child: GestureDetector(
                  onTap: onTap,
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.kBlackColor,
                    child: const Icon(
                      Icons.arrow_forward,
                      size: 22,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
