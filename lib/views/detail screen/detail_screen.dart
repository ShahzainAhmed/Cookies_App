import 'package:coffee_app/models/tile_model.dart';
import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:coffee_app/views/detail%20screen/widgets/custom_counter.dart';
import 'package:coffee_app/views/detail%20screen/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

class DetailScreen extends StatefulWidget {
  final TileModel tileModel;
  const DetailScreen({super.key, required this.tileModel});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: AppColors.kOrangeColor,
            )),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: LikeButton(
              padding: EdgeInsets.zero,
              size: 20,
              circleColor: const CircleColor(
                start: AppColors.kOrangeColor,
                end: AppColors.kOrangeColor,
              ),
              bubblesColor: const BubblesColor(
                dotPrimaryColor: AppColors.kOrangeColor,
                dotSecondaryColor: AppColors.kOrangeColor,
              ),
              likeBuilder: (bool isLiked) {
                return Icon(
                  isLiked ? Icons.favorite_rounded : Icons.favorite_outline,
                  color:
                      isLiked ? AppColors.kOrangeColor : AppColors.kOrangeColor,
                  size: 24,
                );
              },
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                height: 200.h,
                child: Image.asset(widget.tileModel.image, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              widget.tileModel.title,
              style: AppTypography.kMedium26
                  .copyWith(color: AppColors.kWhiteColor),
            ),
            Text(
              widget.tileModel.category,
              style: AppTypography.kLight20
                  .copyWith(color: AppColors.kOrangeColor),
            ),
            SizedBox(height: 4.h),
            RatingBar.builder(
              unratedColor: Colors.grey.withOpacity(0.7),
              initialRating: widget.tileModel.ratingStars,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 18.0,
              itemBuilder: (context, _) =>
                  const Icon(Icons.star, color: AppColors.kOrangeColor),
              onRatingUpdate: (rating) {},
            ),
            SizedBox(height: 30.h),
            Text(
              widget.tileModel.description,
              style:
                  AppTypography.kLight16.copyWith(color: AppColors.kWhiteColor),
            ),
            const Spacer(),
            const Center(child: CustomCounter()),
            SizedBox(height: 40.h)
          ],
        ),
      ),
      bottomNavigationBar:
          PrimaryButton(title: "Add to Cart", borderRadius: 30, onTap: () {}),
    );
  }
}
