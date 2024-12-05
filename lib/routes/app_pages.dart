import 'package:coffee_app/routes/app_routes.dart';
import 'package:coffee_app/views/home/home_screen.dart';
import 'package:coffee_app/views/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

class AppPages {
  AppPages._(); // private
  static var allPages = [
    GetPage(
      name: AppRoutes.homescreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: AppRoutes.onboarding,
      page: () => const OnboardingScreen(),
    )
  ];
}
