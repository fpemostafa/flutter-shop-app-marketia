import 'package:flutter/material.dart';

import '../constants.dart';

class TimerUi extends StatelessWidget {
  const TimerUi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextTheme myTextTheme = Theme.of(context).textTheme;
    return Row(
      children: [
        SizedBox(
          height: 41,
          width: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (_, index) => Container(
              width: 42,
              decoration: const BoxDecoration(
                  borderRadius: defulutBorderRadius, color: Colors.white),
              child: Center(
                child: Text(
                  "01",
                  textAlign: TextAlign.center,
                  style: myTextTheme.headline4!
                      .copyWith(letterSpacing: 1.8, fontSize: 18),
                ),
              ),
            ),
            separatorBuilder: (_, __) => SizedBox(
              width: 15,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
            itemCount: 3,
          ),
        ),
      ],
      // children: List.generate(
      //   3,
      //   (index) => Container(
      //     margin: EdgeInsets.only(right: 20),
      //     width: 42,
      //     height: 42,
      //     decoration: const BoxDecoration(
      //         borderRadius: defulutBorderRadius,
      //         color: Colors.white),
      //   ),
      // ),
    );
  }
}
