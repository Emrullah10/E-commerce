import 'package:ecommerce/models/information_model.dart';
import 'package:ecommerce/models/paymen_info_model.dart';
import 'package:flutter/material.dart';

class CheckOutModel {
  final String? shipTitle;
  final String? payTitle;
  final Widget textbutton;
  List<Information> information;
  List<PaymentInfoModel> payment;
  CheckOutModel({
    required this.payTitle,
    required this.shipTitle,
    required this.textbutton,
    required this.information,
    required this.payment,
  });
}
