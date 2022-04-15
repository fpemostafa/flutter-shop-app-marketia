
import 'package:flutter/material.dart';

import '../../constants.dart';

class SelectProductSize extends StatelessWidget {
  const SelectProductSize({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? currentSizeIndex;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          6,
          (index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 16,
              top: 12,
            ),
            child: InkWell(
              splashColor: primaryColor.withOpacity(.2),
              highlightColor: primaryColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(25),
              onTap: () {
                currentSizeIndex = index;
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          currentSizeIndex == 2 ? primaryColor : neutralGrey),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "${index / 2 + 5}",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: index == currentSizeIndex
                            ? neutralDark
                            : neutralGrey),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
