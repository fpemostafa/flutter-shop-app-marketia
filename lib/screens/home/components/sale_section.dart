import 'package:flutter/material.dart';
import 'package:marketia/models/products.dart';
import 'package:marketia/widgets/product_card.dart';

class SaleSection extends StatelessWidget {
  const SaleSection({
    required this.onPress,
    Key? key,
  }) : super(key: key);
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          productsList.length,
          (index) => Padding(
            padding: const EdgeInsetsDirectional.only(end: 12),
            child: ProductCard(
              onPress: onPress,
            ),
          ),
        ),
      ),
    );
  }
}
