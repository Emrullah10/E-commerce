import 'package:ecommerce/companents/custom_button.dart';
import 'package:ecommerce/generated/assets.dart';
import 'package:ecommerce/view/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

class OrderSuccess extends ConsumerWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: 10.allP,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(Assets.resourcesImagesImSuccess),
            SizedBox(
                width: 500,
                child: CustomButton(
                    onTap: () => Grock.to(BaseScaffold()), text: "Thank you for your Purchase")),
          ],
        ),
      ),
    );
  }
}
