import 'package:ecommerce/companents/catEgory_text.dart';
import 'package:ecommerce/companents/custom_appBar.dart';
import 'package:ecommerce/companents/home_slider_widget.dart';
import 'package:ecommerce/companents/product_card.dart';
import 'package:ecommerce/models/home_product.model.dart';
import 'package:ecommerce/riverpod/home_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

final homeRiverpod = ChangeNotifierProvider((ref) => HomeRiverpod());

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(
    BuildContext context,
  ) {
    var watch = ref.watch(homeRiverpod);
    var read = ref.read(homeRiverpod);

    return Scaffold(
        appBar: CustomAppBar(),
        body: ListView(
          children: [
            HomeCampaigns(
              read: read,
              watch: watch,
            ),
            homeProducts(read.hotDeals),
            homeProducts(read.mostPopular),
          ],
        ));
  }

  Column homeProducts(HomeProductsModel model) {
    return Column(
      children: [
        Padding(
          padding: [10, 10, 10, 10].paddingLTRB,
          child: CategoryText(categoryTitle: model.categoryTitle),
        ),
        SizedBox(
          height: 290,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: model.products.length,
              padding: [20, 10, 20, 10].paddingLTRB,
              itemBuilder: (context, index) {
                return ProductCard(product: model.products[index]);
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              }),
        ),
      ],
    );
  }
}
