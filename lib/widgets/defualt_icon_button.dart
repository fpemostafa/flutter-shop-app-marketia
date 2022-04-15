
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../constants.dart';

class DefualtIconButton extends StatelessWidget {
  const DefualtIconButton({
    Key? key,
    required this.icon,
    required this.onPress,
    this.padding = EdgeInsets.zero,
    this.color = primaryColor,
    this.isPageted = false,
    this.splashRadius = 20.0,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final Color color;
  final VoidCallback onPress;
  final double splashRadius;
  final String icon;
  final bool isPageted;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: padding,
      highlightColor: primaryColor.withOpacity(.4),
      splashColor: primaryColor.withOpacity(.6),
      color: color,
      splashRadius: splashRadius,
      icon: isPageted
          ? Stack(
              children: [
                SvgPicture.asset(icon),
                const PositionedDirectional(
                  top: 0,
                  end: 2,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: primaryRed,
                  ),
                ),
              ],
            )
          : SvgPicture.asset(icon),
      onPressed: onPress,
    );
  }
}
