import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketia/constants.dart';
import 'package:marketia/Ui/theme.dart';

class ThirdPartyButton extends StatelessWidget {
  const ThirdPartyButton({
    required this.logo,
    required this.text,
    required this.press,
    Key? key,
  }) : super(key: key);
  final String logo;
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    TextTheme myTextTheme = MyThemeData.lightMode.textTheme;

    return TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsetsDirectional.only(start: defualtPadding - 4),
          textStyle: myTextTheme.headline4!.copyWith(
            fontSize: 14,
          ),
          primary: neutralGrey,
          minimumSize: const Size(double.infinity, 57),
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: neutralLight),
            borderRadius: defulutBorderRadius,
          ),
        ),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              logo,
              width: 24,
              height: 24,
              fit: BoxFit.cover,
            ),
            Expanded(
                child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
              ),
            )),
          ],
        ));
  }
}
