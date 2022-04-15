import 'package:flutter/material.dart';
import 'package:marketia/widgets/product_rate.dart';

import '../constants.dart';

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    Key? key,
    this.hasImage = false,
    required this.date,
    required this.image,
    required this.name,
    required this.stars,
    required this.text,
  }) : super(key: key);
  final bool hasImage;
  final int stars;
  final String name;
  final String text;
  final String image;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(fontSize: 14),
                ),
                const ProductRate(starSize: 16),
              ],
            )
          ],
        ),
        const SizedBox(height: 16),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
          maxLines: 5,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
        ),
        if (hasImage)
          Column(
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsetsDirectional.only(end: 12),
                    width: 72,
                    height: 72,
                    decoration: const BoxDecoration(
                      borderRadius: defulutBorderRadius,
                      color: primaryGreen,
                      image: DecorationImage(
                        image: AssetImage("assets/images/image 57.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(end: 12),
                    width: 72,
                    height: 72,
                    decoration: const BoxDecoration(
                      borderRadius: defulutBorderRadius,
                      color: primaryGreen,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle 428.png"),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsetsDirectional.only(end: 12),
                    width: 72,
                    height: 72,
                    decoration: const BoxDecoration(
                      borderRadius: defulutBorderRadius,
                      color: primaryGreen,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle 429.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        const SizedBox(height: 8),
        Text(
          date,
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
