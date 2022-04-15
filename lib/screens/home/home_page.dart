import 'package:flutter/material.dart';

import 'package:marketia/constants.dart';
import 'package:marketia/models/category.dart';
import 'package:marketia/navigation.dart';
import 'package:marketia/product/product_details.dart';
import 'package:marketia/screens/favorate/favorates.dart';

import 'package:marketia/screens/home/components/banner.dart';
import 'package:marketia/screens/home/components/sale_section.dart';
import 'package:marketia/screens/offer/offer.dart';
import 'package:marketia/ui/theme.dart';
import 'package:marketia/widgets/bottom_nav_bar.dart';
import 'package:marketia/widgets/category_card.dart';
import 'package:marketia/widgets/product_card.dart';
import 'package:marketia/widgets/section.dart';
import 'package:marketia/widgets/text_input_form.dart';
import 'package:marketia/widgets/timer_ui.dart';

import '../../widgets/defualt_icon_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: defualtPadding,
            end: defualtPadding / 4,
          ),
          child: Row(
            children: [
              const Expanded(
                child: TextInputForm(
                  hintText: "Search",
                  prefixIcon: "assets/icons/Search.svg",
                  isLast: true,
                ),
              ),
              DefualtIconButton(
                icon: 'assets/icons/love.svg',
                onPress: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Favorates(),
                    ),
                  );
                },
              ),
              DefualtIconButton(
                icon: 'assets/icons/Notification.svg',
                onPress: () {},
                isPageted: true,
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
            start: defualtPadding, end: defualtPadding, top: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Offer(),
                  ),
                ),
                child: const BannerLayout(
                  bannerImage: "assets/images/promotion_image.png",
                  bannerTitle: "Super Flash Sale \n50% Off",
                  bannerSubtitle: TimerUi(),
                  isPagenated: true,
                ),
              ),
              const SizedBox(height: 24),
              SectionTitle(
                press: () {},
                sectionLable: 'More Categories',
                sectionName: 'Category',
              ),
              const SizedBox(height: 12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    categoriesList.length,
                    (index) => Padding(
                      padding: const EdgeInsetsDirectional.only(end: 12),
                      child: CategoryCard(
                        icon: categoriesList[index].icon,
                        name: categoriesList[index].name,
                        onPress: () {},
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: defualtPadding),
              SectionTitle(
                press: () {
                  MyNavigator.pushTo(context, const Offer());
                },
                sectionName: 'Flash Sale',
                sectionLable: 'See More',
              ),
              const SizedBox(height: defualtPadding / 2),
              SaleSection(
                onPress: () {
                  MyNavigator.pushTo(context, const ProductDetails());
                },
              ),
              const SizedBox(height: defualtPadding / 2),
              SectionTitle(
                press: () {},
                sectionName: 'Mega Sale',
                sectionLable: 'See More',
              ),
              SaleSection(
                onPress: () {
                  MyNavigator.pushTo(context, const ProductDetails());
                },
              ),
              const SizedBox(height: 8),
              BannerLayout(
                bannerImage: "assets/images/image 51.png",
                bannerTitle: "Recomended \nProduct",
                bannerSubtitle: Text(
                  "We recommend the best for you",
                  style: MyThemeData.lightMode.textTheme.bodyText2!
                      .copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
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
                    onPress: () {
                      MyNavigator.pushTo(context, const ProductDetails());
                    },
                  );
                },
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomNavBar(),
    );
  }
}
