import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/constants.dart';

class TextInputForm extends StatelessWidget {
  const TextInputForm({
    Key? key,
    this.isPassword = false,
    this.isLast = false,
    this.inputType = TextInputType.text,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);
  final bool isPassword;
  final String hintText;
  final String prefixIcon;
  final bool isLast;
  final TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: defulutBorderRadius,
        border: Border.all(
          color: neutralLight,
        ),
      ),
      child: Form(
        child: TextFormField(
          textInputAction: isLast ? TextInputAction.done : TextInputAction.next,
          obscureText: isPassword,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              border: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusColor: primaryColor,
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: defulutBorderRadius,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: neutralGrey,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defualtPadding / 2 + 2,
                    vertical: defualtPadding / 2 + 1),
                child: SvgPicture.asset(prefixIcon),
              )),
        ),
      ),
    );
  }
}
