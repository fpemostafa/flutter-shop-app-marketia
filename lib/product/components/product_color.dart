
import 'package:flutter/material.dart';

import '../../constants.dart';

class SelectProductColor extends StatelessWidget {
  const SelectProductColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          colorsList.length,
          (index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 12,
              bottom: 12,
              end: 16.0,
            ),
            child: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: colorsList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
