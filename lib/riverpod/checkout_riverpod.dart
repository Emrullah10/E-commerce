import 'package:ecommerce/constant/constant.dart';
import 'package:ecommerce/generated/assets.dart';
import 'package:ecommerce/models/checkout_model.dart';
import 'package:ecommerce/models/information_model.dart';
import 'package:ecommerce/models/paymen_info_model.dart';
import 'package:flutter/material.dart';

class CheckoutRiverpod extends ChangeNotifier {
  final CheckOutModel checkOutModel = CheckOutModel(
    shipTitle: "Shipping Information",
    payTitle: "Payment Method",
    textbutton: TextButton(
      onPressed: () {},
      child: Text(
        "change",
        style: TextStyle(
          color: Constant.orange,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    information: [
      Information(nameOrTitle: "Jane", surname: "alderson", icon: Icons.person),
      Information(nameOrTitle: "Phone", description: "+1 123 456 7890", icon: Icons.phone),
      Information(nameOrTitle: "Address", description: "123 Main Street", icon: Icons.location_on),
    ],
    payment: [
      PaymentInfoModel(cardImage: Assets.resourcesImagesImPay1, cardNumber: "**** **** **** 1234"),
      PaymentInfoModel(cardImage: Assets.resourcesImagesImPay2, cardNumber: "**** **** **** 5678"),
      PaymentInfoModel(cardImage: Assets.resourcesImagesImPay3, cardNumber: "**** **** **** 6589"),
    ],
  );

  /// Seçili ödeme yönteminin index'i. Varsayılan olarak 0.
  int selectedPaymentIndex = 0;

  void updateSelectedPaymentIndex(int index) {
    selectedPaymentIndex = index;
    notifyListeners();
  }
}
