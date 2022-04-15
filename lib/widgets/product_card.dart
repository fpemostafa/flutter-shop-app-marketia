import 'dart:math';

import 'package:flutter/material.dart';
import 'package:marketia/constants.dart';
import 'package:marketia/models/products.dart';
import 'package:marketia/widgets/product_rate.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.onPress,
    this.showStars = false,
  }) : super(key: key);

  final Random random = Random();
  final bool showStars;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 238,
        width: 141,
        decoration: BoxDecoration(
            borderRadius: defulutBorderRadius,
            border: Border.all(color: neutralLight)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                productsList[random.nextInt(productsList.length)].productImage,
              ),
              Text(
                productsList[random.nextInt(productsList.length)].productName,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 12),
              ),
              showStars ? const ProductRate() : Container(),
              Text(
                "\$ 299.43",
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: primaryColor, fontSize: 12),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$534.33",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: primaryRed),
                  ),
                  Text(
                    "24% Off",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: primaryRed, fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
