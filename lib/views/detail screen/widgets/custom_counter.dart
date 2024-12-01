// ignore_for_file: unused_field

import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCounter extends StatefulWidget {
  final double? btnRadius;
  const CustomCounter({super.key, this.btnRadius});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w),
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
          color: AppColors.kOrangeColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: _decrementCounter,
              icon: const Icon(Icons.remove, size: 16, color: Colors.white),
            ),
            Text(
              _counter.toString(),
              style: AppTypography.kExtraBold14
                  .copyWith(color: AppColors.kWhiteColor),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: _incrementCounter,
              icon: const Icon(Icons.add, size: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
