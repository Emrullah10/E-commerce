import 'package:ecommerce/generated/assets.dart';
import 'package:ecommerce/models/home_product.model.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campains = [
    Assets.resourcesImagesImCampaigns,
    Assets.resourcesImagesImCampaigns,
    Assets.resourcesImagesImCampaigns,
  ];

  int campainsCurrentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void onPageChanged(int newPageIndex) {
    campainsCurrentIndex = newPageIndex;
    notifyListeners();
  }


HomeProductsModel hotDeals =
    HomeProductsModel(categoryTitle: "Hot Deals", products: [
  Product(
      image: Assets.resourcesImagesImC1,
      title: "apple iMac 24 (2021)",
      price: 1299,
      star: 4.9,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      isSaved: false),
  Product(
      image: Assets.resourcesImagesImW1,
      title: "Apple Watch V1",
      price: 859,
      star: 4.7,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      isSaved: true),
  Product(
      image: Assets.resourcesImagesImP1,
      title: "Apple iPhone 12 Series",
      price: 1199,
      star: 5.0,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      isSaved: false),
]);

HomeProductsModel mostPopular =
    HomeProductsModel(categoryTitle: "Most Popular", products: [
  Product(
      image: Assets.resourcesImagesImC2,
      title: "apple iMac 30 (2018)",
      price: 1000,
      star: 4.4,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      isSaved: true),
  Product(
      image: Assets.resourcesImagesImW2,
      title: "Apple Watch V2",
      price: 1099,
      star: 4.9,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      isSaved: false),
  Product(
      image: Assets.resourcesImagesImP2,
      title: "Apple iPhone 13 Pro Max",
      price: 1499,
      star: 5.0,
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      descTitle: "Get Apple TV+ free for a year",
      descDetail:
          "iPad Air. With a stunning 10.9-inch Liquid Retina display and True Tone for a more comfortable viewing experience.1 Powered by the new A14 Bionic chip with Neural Engine for 4K video editing, music creation, and next-level games - all with ease. Featuring fast, easy, and secure Touch ID, advanced cameras, USB-C, and support for versatile accessories, including Magic Keyboard and Apple Pencil (2nd generation)6.",
      isSaved: true),
]);
}