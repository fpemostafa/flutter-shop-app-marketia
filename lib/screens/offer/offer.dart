import 'package:flutter/material.dart';
import 'package:marketia/constants.dart';
import 'package:marketia/widgets/defualt_icon_button.dart';

import '../../widgets/product_card.dart';
import '../../widgets/timer_ui.dart';
import '../home/components/banner.dart';

class Offer extends StatelessWidget {
  const Offer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defualtPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BannerLayout(
                bannerImage: "assets/images/promotion_image.png",
                bannerTitle: "Super Flash Sale \n50% Off",
                bannerSubtitle: TimerUi(),
                isPagenated: false,
              ),
              GridView.builder(
                primary: false,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  mainAxisExtent: 280,
                  crossAxisCount: 2,
                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index) {
                  return ProductCard(
                    showStars: true,
                    onPress: () {},
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
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
        "Supper Flash Sale 50% Off",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: neutralDark),
      ),
      actions: [
        DefualtIconButton(
          icon: "assets/icons/Search.svg",
          onPress: () {},
        ),
        const SizedBox(width: defualtPadding / 4),
      ],
    );
  }
}
