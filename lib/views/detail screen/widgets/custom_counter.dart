// ignore_for_file: unused_field

import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/resources/app_typography.dart';
import 'package:flutter/material.dart';

class CustomCounter extends StatefulWidget {
  final double? btnRadius;
  const CustomCounter({super.key, this.btnRadius});

  @override
  State<CustomCounter> createState() => _CustomCounterState();
}

class _CustomCounterState extends State<CustomCounter> {
  int _counter = 1;
  bool? _isAddIconPressed;
  bool? _isRemoveIconPressed;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _isAddIconPressed = true;
      _isRemoveIconPressed = false;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        _isAddIconPressed = false;
        _isRemoveIconPressed = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryContainer(
      color: AppColors.kOrangeColor,
      radius: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: SizedBox(
          width: 120,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Decrement Button
              GestureDetector(
                onTap: _decrementCounter,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.kOrangeColor,
                    borderRadius: BorderRadius.circular(widget.btnRadius ?? 2),
                  ),
                  child:
                      const Icon(Icons.remove, size: 16, color: Colors.white),
                ),
              ),
              const SizedBox(width: 12),
              // Counter Text
              Text(
                _counter.toString(),
                style: AppTypography.kExtraBold14
                    .copyWith(color: AppColors.kWhiteColor),
              ),
              const SizedBox(width: 12),
              // Increment Button
              GestureDetector(
                onTap: _incrementCounter,
                child: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: AppColors.kOrangeColor,
                    borderRadius: BorderRadius.circular(widget.btnRadius ?? 2),
                  ),
                  child: const Icon(Icons.add, size: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrimaryContainer extends StatelessWidget {
  final Widget child;
  final double? radius;
  final Color? color;
  const PrimaryContainer({
    super.key,
    this.radius,
    this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.kOrangeColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
