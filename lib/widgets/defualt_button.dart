import 'package:flutter/material.dart';
import 'package:marketia/constants.dart';

class DefualtButton extends StatelessWidget {
  const DefualtButton({
    Key? key,
    this.elevation = 10.0,
    required this.lable,
    this.onPress,
  }) : super(key: key);

  final String lable;
  final double elevation;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    TextTheme myTextTheme = Theme.of(context).textTheme;
    return TextButton(
      onPressed: onPress,
      child: Text(
        lable,
        style: myTextTheme.headline3,
      ),
      style: TextButton.styleFrom(
        elevation: elevation,
        backgroundColor: primaryColor,
        primary: Colors.white,
        shadowColor: primaryColor.withOpacity(.24),
        minimumSize: const Size(double.infinity, 57),
        shape: const RoundedRectangleBorder(
          borderRadius: defulutBorderRadius,
        ),
      ),
    );
  }
}
