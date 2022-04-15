import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({
    Key? key,
    this.bottomPadding = 8,
    this.topPadding = 8,
    this.starSize = 12,
    this.endPadding = 2,
  }) : super(key: key);
  final double starSize;
  final double bottomPadding;
  final double endPadding;
  final double topPadding;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Padding(
          padding: EdgeInsetsDirectional.only(
            end: endPadding,
            top: topPadding,
            bottom: bottomPadding,
          ),
          child: SvgPicture.asset(
            "assets/icons/Star.svg",
            height: starSize,
            width: starSize,
            color: index <= 3 ? primaryYellow : neutralLight,
          ),
        ),
      ),
    );
  }
}
