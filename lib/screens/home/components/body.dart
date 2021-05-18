import 'package:e_commerce_ui/size_config.dart';
import 'package:flutter/material.dart';
import 'discount_banner.dart';
import 'categories.dart';
import 'special_offers.dart';
import 'popular_product.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        DiscountBanner(),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Categories(),
        SpecialOffers(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        PopularProducts(),
        SpecialOffers(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
      ]),
    ));
  }
}
