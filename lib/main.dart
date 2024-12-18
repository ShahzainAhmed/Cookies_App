import 'package:coffee_app/resources/app_colors.dart';
import 'package:coffee_app/routes/app_pages.dart';
import 'package:coffee_app/routes/app_routes.dart';
import 'package:coffee_app/views/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: AppRoutes.onboarding,
        getPages: AppPages.allPages,
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.kBackgroundColor,
          appBarTheme:
              const AppBarTheme(backgroundColor: AppColors.kBackgroundColor),
        ),
        home: const OnboardingScreen(),
      ),
    );
  }
}
