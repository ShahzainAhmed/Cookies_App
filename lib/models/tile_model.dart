import 'package:coffee_app/resources/app_assets.dart';

class TileModel {
  final String title;
  final String category;
  final String price;
  final String image;
  final String oldPrice;

  TileModel({
    required this.title,
    required this.category,
    required this.price,
    required this.image,
    required this.oldPrice,
  });
}

List tilesDataList = [
  TileModel(
    title: "Chocolate \nchips",
    category: "PREMIUM",
    price: "20",
    oldPrice: "10",
    image: AppAssets.kCookie1,
  ),
  TileModel(
    title: "Oatmeal \nwith raisins",
    category: "CLASSIC",
    price: "18",
    oldPrice: "10",
    image: AppAssets.kCookie2,
  ),
  TileModel(
    title: "Chocolate chips",
    category: "PREMIUM",
    price: "20",
    oldPrice: "8",
    image: AppAssets.kCookie1,
  ),
];
