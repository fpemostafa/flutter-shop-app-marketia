import 'package:flutter/material.dart';
import 'package:marketia/constants.dart';
import 'package:marketia/widgets/product_rate.dart';

class WriteReviewPage extends StatelessWidget {
  const WriteReviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Write Review")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defualtPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Please write Overall level of satisfaction with your shipping / Delivery Service",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 14),
                maxLines: 2,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const ProductRate(
                    starSize: 32,
                    endPadding: 10,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "4/5",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Write Your Review!",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(height: defualtPadding),
              Form(
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  style: Theme.of(context)
                      .textTheme
                      .headline2!
                      .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintStyle: Theme.of(context).textTheme.bodyText1,
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                      borderRadius: defulutBorderRadius,
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: neutralLight),
                      borderRadius: defulutBorderRadius,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: neutralLight, width: 5),
                      borderRadius: defulutBorderRadius,
                    ),
                    hintText: "Write your review here",
                  ),
                ),
              ),
              const SizedBox(height: defualtPadding),
              Text(
                "Add Photo",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 14),
              ),
              Container(
                height: 72,
                width: 72,
                margin: const EdgeInsetsDirectional.only(top: 12),
                decoration: BoxDecoration(
                  borderRadius: defulutBorderRadius,
                  border: Border.all(color: neutralLight),
                ),
                child: const Icon(
                  Icons.add,
                  color: neutralGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
