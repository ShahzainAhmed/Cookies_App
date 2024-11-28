import 'package:coffee_app/resources/app_assets.dart';

class TileModel {
  final String title;
  final String category;
  final String price;
  final String image;
  final String oldPrice;
  final double ratingStars;
  final String description;

  TileModel({
    required this.title,
    required this.category,
    required this.price,
    required this.image,
    required this.oldPrice,
    required this.ratingStars,
    required this.description,
  });
}

List tilesDataList = [
  TileModel(
    title: "Chocolate chips",
    category: "PREMIUM",
    price: "20",
    oldPrice: "30",
    ratingStars: 4.5,
    image: AppAssets.kCookie1,
    description:
        "Our rich and indulgent chocolate chips cookies, made with premium ingredients for that perfect melt-in-your-mouth experience.",
  ),
  TileModel(
    title: "Oatmeal with raisins",
    category: "CLASSIC",
    price: "18",
    oldPrice: "25",
    ratingStars: 4.8,
    image: AppAssets.kCookie2,
    description:
        "A hearty, wholesome treat made with oats, raisins, and a hint of cinnamon, perfect for a healthy snack or breakfast.",
  ),
  TileModel(
    title: "Chocolate chips",
    category: "PREMIUM",
    price: "15",
    oldPrice: "20",
    ratingStars: 5,
    image: AppAssets.kCookie1,
    description:
        "Our rich and indulgent chocolate chips cookies, made with premium ingredients for that perfect melt-in-your-mouth experience.",
  ),
];
