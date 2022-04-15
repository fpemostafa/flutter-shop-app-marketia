import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class CategoryCard extends StatelessWidget {
   const CategoryCard({
    Key? key,
    required this.icon,
    required this.name,
    required this.onPress,
  }) : super(key: key);

  final String icon;
  final String name;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          customBorder: const CircleBorder(side: BorderSide.none),
          onTap:onPress,
          highlightColor: primaryColor.withOpacity(.1),
          splashColor: primaryColor.withOpacity(.15),
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: neutralLight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset(icon),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          name,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 10,
                color: neutralGrey,
              ),
        ),
      ],
    );
  }
}
