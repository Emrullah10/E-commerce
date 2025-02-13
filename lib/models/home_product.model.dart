

import 'package:ecommerce/models/product.dart';

class HomeProductsModel {
  String categoryTitle;
  List<Product> products;
  HomeProductsModel({
    required this.categoryTitle,
    required this.products,
  });
}