import 'package:ecommerce/constant/constant.dart';
import 'package:ecommerce/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grock/grock.dart';

// ignore: must_be_immutable
class ProductCard extends ConsumerStatefulWidget {
  Product product;
  ProductCard({super.key, required this.product});

  @override
  ConsumerState<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends ConsumerState<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(color: Constant.white, borderRadius: 10.allBR, boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 5,
        ),
      ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.product.image,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: 10.horizontalP,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    widget.product.title,
                    style: TextStyle(
                      fontSize: 15,
                      color: Constant.black,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.product.isSaved = !widget.product.isSaved;
                      });
                    },
                    icon: widget.product.isSaved
                        ? Icon(
                            Icons.bookmark_border_outlined,
                            color: Colors.black,
                          )
                        : Icon(
                            Icons.bookmark_outlined,
                            color: Constant.yellow,
                          ))
              ],
            ),
          ),
          Padding(
            padding: [10, 5].horizontalAndVerticalP,
            child: Text(
              "\$${widget.product.price.toString()}",
              style: TextStyle(
                color: Constant.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: 7.horizontalP,
            child: Row(
              children: [
                Icon(Icons.star_rate_rounded, color: Constant.orange, size: 22),
                Text(
                  widget.product.star.toString(),
                  style: TextStyle(
                    color: Constant.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
