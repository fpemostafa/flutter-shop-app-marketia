import 'package:flutter/material.dart';
import 'package:marketia/models/reviews.dart';
import 'package:marketia/widgets/defualt_button.dart';

import 'package:marketia/widgets/product_rate.dart';
import 'package:marketia/widgets/section.dart';

import '../reviews/reviews.dart';
import '../constants.dart';
import '../navigation.dart';
import '../screens/home/components/sale_section.dart';
import '../widgets/defualt_icon_button.dart';
import '../widgets/review_widget.dart';
import 'components/product_color.dart';
import 'components/product_size.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 238,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/product_image.png"),
                ),
              ),
            ),
            const SizedBox(height: defualtPadding - 4),
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
            ),
            const SizedBox(height: defualtPadding - 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defualtPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Nike Air Zoom Pegasus 36 Miami",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    fontSize: 20,
                                  ),
                        ),
                      ),
                      DefualtIconButton(
                          padding: EdgeInsets.zero,
                          icon: "assets/icons/love.svg",
                          onPress: () {})
                    ],
                  ),
                  const SizedBox(height: defualtPadding / 2 - 2),
                  const ProductRate(starSize: 16),
                  Text(
                    "\$ 339.40",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(fontSize: 20, color: primaryColor),
                  ),
                  const SizedBox(height: defualtPadding),
                  Text(
                    "Select Size",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: neutralDark),
                  ),
                  const SelectProductSize(),
                  const SizedBox(height: defualtPadding),
                  Text(
                    "Select Color",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: neutralDark),
                  ),
                  const SelectProductColor(),
                  const SizedBox(width: defualtPadding),
                  SizedBox(
                    height: 241,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SectionTitle(
                          isClickable: false,
                          sectionName: "Specification",
                        ),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Shown:",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: neutralDark),
                            ),
                            Text(
                              "Laser\nBlue/Anthracite/Watermel\non/White",
                              textAlign: TextAlign.end,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontSize: 12, color: neutralGrey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Style:",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: neutralDark),
                            ),
                            Text(
                              "CD0113-400",
                              textAlign: TextAlign.end,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontSize: 12, color: neutralGrey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 4,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 12,
                                    color: neutralGrey,
                                    height: 1.8,
                                    letterSpacing: 1.15,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SectionTitle(
                    press: () {
                      MyNavigator.pushTo(context, const Reviews());
                    },
                    sectionName: "Review Product",
                    sectionLable: "See All",
                  ),
                  SizedBox(
                    width: 191,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const ProductRate(starSize: 16),
                        Text(
                          "4.5",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          "( 5 Review )",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  ReviewSection(
                    name: reviewsList[0].name,
                    image: reviewsList[0].image,
                    text: reviewsList[0].text,
                    date: reviewsList[0].date,
                    stars: reviewsList[0].stars,
                    hasImage: true,
                  ),
                  const SizedBox(height: 24),
                  const SectionTitle(
                    sectionName: "You Might Also Like",
                    isClickable: false,
                  ),
                  const SizedBox(height: 12),
                  SaleSection(
                    onPress: () {
                      MyNavigator.pushTo(context, const ProductDetails());
                    },
                  ),
                  const SizedBox(height: defualtPadding),
                  const DefualtButton(
                    lable: "Add to Cart",
                    elevation: 50,
                  ),
                  const SizedBox(height: defualtPadding * 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
      title: const Text(
        "Nike Air Max 270 React ENG",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: neutralDark),
      ),
      actions: [
        DefualtIconButton(
          icon: "assets/icons/Search.svg",
          onPress: () {},
        ),
        IconButton(
          highlightColor: primaryColor.withOpacity(.4),
          splashColor: primaryColor.withOpacity(.6),
          splashRadius: 20,
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert_rounded,
            color: neutralGrey,
          ),
        ),
      ],
    );
  }
}
