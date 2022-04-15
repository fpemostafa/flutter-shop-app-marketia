import 'package:flutter/material.dart';

import '../constants.dart';
import '../Ui/theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    this.press,
    required this.sectionName,
    this.sectionLable,
    this.isClickable = true,
    Key? key,
  }) : super(key: key);
  final String sectionName;
  final String? sectionLable;
  final VoidCallback? press;
  final bool isClickable;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionName,
            style: MyThemeData.lightMode.textTheme.headline4!
                .copyWith(fontSize: 14),
          ),
          if (isClickable)
            TextButton(
              onPressed: press,
              child: Text(
                sectionLable!,
                style: MyThemeData.lightMode.textTheme.headline4!
                    .copyWith(color: primaryColor, fontSize: 14),
              ),
            ),
        ],
      ),
    );
  }
}
