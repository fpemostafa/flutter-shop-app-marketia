import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/product_card.dart';

class Favorates extends StatelessWidget {
  const Favorates({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defualtPadding),
        child: SingleChildScrollView(
          child: GridView.builder(
            primary: false,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 280,
              crossAxisCount: 2,
            ),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ProductCard(
                onPress: () {},
                showStars: true,
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar myAppBar(context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
      title: Text(
        "Favorite Product",
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
