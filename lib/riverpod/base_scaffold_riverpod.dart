import 'package:ecommerce/generated/assets.dart';
import 'package:ecommerce/models/battom_nav_bar_model.dart';
import 'package:ecommerce/view/account.dart';
import 'package:ecommerce/view/cart.dart';
import 'package:ecommerce/view/category.dart';
import 'package:ecommerce/view/home.dart';
import 'package:ecommerce/view/whislist.dart';
import 'package:flutter/material.dart';


class BaseScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: Assets.resourcesIconsIcBottomHome, title: "Home"),
    BottomNavBarModel(image: Assets.resourcesIconsIcBottomSave, title: "Wishlist"),
    BottomNavBarModel(image: Assets.resourcesIconsIcBottomCategories, title: "Category"),
    BottomNavBarModel(image: Assets.resourcesIconsIcBottomAccount, title: "Account"),
    BottomNavBarModel(image: Assets.resourcesIconsIcBottomCart, title: "Cart"),
  ];
  int currentIndex = 0;

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {   
    switch (currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return Wishlist();
      case 2:
        return Category();
      case 3:
        return Account();
      case 4:
        return Cart();
      default:
        return HomePage();
    }
  }
}
