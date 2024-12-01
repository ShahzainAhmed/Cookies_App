import 'package:coffee_app/models/tile_model.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallTile extends StatelessWidget {
  final VoidCallback onTap;
  final TileModel smallTileModel;
  const SmallTile(
      {super.key, required this.smallTileModel, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 130.h,
        width: 140.w,
        padding:
            EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 10.h),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  smallTileModel.title,
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
                    SizedBox(width: 4.w),
                    Text(
                      smallTileModel.category,
                      style: AppTypography.kMedium12.copyWith(
                        color: AppColors.kOrangeColor,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${smallTileModel.price} USD",
                  style: AppTypography.kBold14
                      .copyWith(color: AppColors.kWhiteColor),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 120,
              child: Image.asset(smallTileModel.image),
            ),
            Positioned(
              left: 80,
              top: 80,
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
    );
  }
}
