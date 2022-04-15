import 'package:flutter/material.dart';

import '../../../constants.dart';

class BannerLayout extends StatelessWidget {
   const BannerLayout({
    required this.bannerImage,
    required this.bannerTitle,
    required this.bannerSubtitle,
    this.isPagenated = false,
    Key? key,
  }) : super(key: key);
  final String bannerImage, bannerTitle;
  final Widget bannerSubtitle;
  final bool? isPagenated;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 206,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: defulutBorderRadius,
            color: neutralLight,
            image: DecorationImage(
              image: AssetImage(
                bannerImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 32,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bannerTitle,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        letterSpacing: .5,
                        height: 1.75,
                      ),
                ),
                const Spacer(),
                bannerSubtitle,
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        if (isPagenated==true)
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            5,
            (index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: index == 2 ? primaryColor : neutralLight,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
