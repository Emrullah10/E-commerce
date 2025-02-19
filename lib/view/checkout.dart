import 'package:ecommerce/companents/custom_button.dart';
import 'package:ecommerce/constant/constant.dart';
import 'package:ecommerce/riverpod/checkout_riverpod.dart';
import 'package:ecommerce/view/order_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

final checkOutProvider = ChangeNotifierProvider<CheckoutRiverpod>(
  (ref) => CheckoutRiverpod(),
);

class CheckoutView extends ConsumerWidget {
  CheckoutView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(checkOutProvider);
    var read = ref.read(checkOutProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "checkout",
          style: TextStyle(
            color: Constant.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Grock.back(),
          icon: Icon(
            Icons.arrow_back,
            size: 32,
          ),
          color: Constant.black,
        ),
      ),
      body: Padding(
        padding: 20.horizontalP,
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Shipping Information Bölümü
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    watch.checkOutModel.shipTitle ?? "",
                    style: TextStyle(
                      color: Constant.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  watch.checkOutModel.textbutton
                ],
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  color: Constant.white,
                  borderRadius: 10.allBR,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: watch.checkOutModel.information.length,
                  itemBuilder: (context, index) {
                    final item = watch.checkOutModel.information[index];
                    return Padding(
                      padding: 12.allP,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(item.icon),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (item.surname != null)
                                  Text(
                                    "${item.nameOrTitle} ${item.surname}",
                                    style: TextStyle(
                                      color: Constant.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                if (item.surname == null)
                                  Text(
                                    item.nameOrTitle ?? "",
                                    style: TextStyle(
                                      color: Constant.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                Text(
                                  item.description ?? "",
                                  style: TextStyle(
                                    color: Constant.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              // Payment Method Başlığı
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  watch.checkOutModel.payTitle ?? "",
                  style: TextStyle(
                    color: Constant.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Payment Listesi (radio button eklendi)
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Constant.white,
                  borderRadius: 10.allBR,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ListView.builder(
                  itemCount: watch.checkOutModel.payment.length,
                  itemBuilder: (context, index) {
                    final item = watch.checkOutModel.payment[index];
                    return Padding(
                      padding: 12.allP,
                      child: Row(
                        children: [
                          // Radio Button kısmı
                          Radio<int>(
                            value: index,
                            groupValue: watch.selectedPaymentIndex,
                            onChanged: (int? value) {
                              if (value != null) {
                                read.updateSelectedPaymentIndex(value);
                              }
                            },
                          ),
                          Image.asset(
                            item.cardImage ?? "",
                            width: 50,
                            height: 50,
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              item.cardNumber ?? "",
                              style: TextStyle(
                                color: Constant.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: 40.verticalP,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total",
                      style: _style,
                    ),
                    Text(
                      "\$1899",
                      style: _style,
                    )
                  ],
                ),
              ),
              Padding(
                padding: 15.onlyBottomP,
                child: SizedBox(
                    width: Grock.width,
                    child:
                        CustomButton(onTap: () => Grock.to(OrderSuccess()), text: "Confirm & Pay")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  final TextStyle _style = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
}
