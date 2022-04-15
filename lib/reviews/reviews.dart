import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketia/constants.dart';
import 'package:marketia/models/reviews.dart';
import 'package:marketia/navigation.dart';
import 'package:marketia/reviews/write_review.dart';
import 'package:marketia/widgets/defualt_button.dart';
import 'package:marketia/widgets/review_widget.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("5 Reviews")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defualtPadding),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsetsDirectional.only(end: 12),
                      decoration: BoxDecoration(
                        borderRadius: defulutBorderRadius,
                        color: primaryColor.withOpacity(.1),
                      ),
                      child: Center(
                        child: Text(
                          " All Reviews",
                          style:
                              Theme.of(context).textTheme.headline2!.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: const EdgeInsetsDirectional.only(end: 12),
                          child: Container(
                            height: 50,
                            width: 62,
                            decoration: BoxDecoration(
                              borderRadius: defulutBorderRadius,
                              border: Border.all(width: 2, color: neutralLight),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/Star.svg",
                                    width: 16,
                                    height: 16,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "${index + 1}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                          color: neutralGrey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              ListView.separated(
                primary: false,
                shrinkWrap: true,
                itemBuilder: ((context, index) => ReviewSection(
                      name: reviewsList[index].name,
                      date: reviewsList[index].date,
                      stars: reviewsList[index].stars,
                      text: reviewsList[index].text,
                      image: reviewsList[index].image,
                      hasImage: index < 1 ? true : false,
                    )),
                separatorBuilder: ((context, index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: Divider(
                        thickness: 1,
                        color: neutralLight,
                      ),
                    )),
                itemCount: reviewsList.length,
              ),
              DefualtButton(
                lable: "Write Review",
                elevation: 50,
                onPress: () {
                  MyNavigator.pushTo(context, const WriteReviewPage());
                },
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
