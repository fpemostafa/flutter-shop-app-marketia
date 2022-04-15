
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: primaryColor,
      unselectedItemColor: neutralDark,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedLabelStyle: const TextStyle(
        color: neutralDark,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      selectedLabelStyle: const TextStyle(
        color: primaryColor,
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ),
      items: [
        BottomNavigationBarItem(
            label: "Home",
            icon: SvgPicture.asset(
              "assets/icons/Home.svg",
              color: primaryColor,
            )),
        BottomNavigationBarItem(
            label: "Explore",
            icon: SvgPicture.asset(
              "assets/icons/Search.svg",
            )),
        BottomNavigationBarItem(
            label: "Cart",
            icon: SvgPicture.asset(
              "assets/icons/Cart.svg",
            )),
        BottomNavigationBarItem(
          label: "Offers",
          icon: SvgPicture.asset(
            "assets/icons/Offer.svg",
          ),
        ),
        BottomNavigationBarItem(
          label: "Account",
          icon: SvgPicture.asset(
            "assets/icons/User.svg",
          ),
        ),
      ],
    );
  }
}
