import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: SectionTitle(title: "Special for you", press: () {}),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOffersCard(
                category: "Smartphone",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 18,
                press: () {
                  print('Smartphone category clicked');
                },
              ),
              SpecialOffersCard(
                category: "Fashion",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 24,
                press: () {
                  print('fashion category clicked');
                },
              )
            ],
          ),
        )
      ],
    );
  }
}

class SpecialOffersCard extends StatelessWidget {
  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;

  const SpecialOffersCard(
      {Key? key,
      required this.category,
      required this.image,
      required this.numOfBrands,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(120),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xFF343434).withOpacity(0.4),
                      Color(0xFF343434).withOpacity(0.15)
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15.0),
                      vertical: getProportionateScreenHeight(10)),
                  child: Text.rich(TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "$category\n",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18),
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "$numOfBrands Brands")
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
