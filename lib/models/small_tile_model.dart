import 'package:coffee_app/resources/app_assets.dart';

class SmallTileModel {
  final String title;
  final String category;
  final String price;
  final String image;

  SmallTileModel({
    required this.title,
    required this.category,
    required this.price,
    required this.image,
  });
}

List smallTilesList = [
  SmallTileModel(
    title: "Chocolate chips",
    category: "PREMIUM",
    price: "20 USD",
    image: AppAssets.kCookie1,
  ),
  SmallTileModel(
    title: "Oatmeal Raisin",
    category: "CLASSIC",
    price: "18 USD",
    image: AppAssets.kCookie2,
  ),
  SmallTileModel(
    title: "Chocolate chips",
    category: "PREMIUM",
    price: "20 USD",
    image: AppAssets.kCookie1,
  ),
];
