// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/models/product.dart';

class product_card extends StatelessWidget {
  const product_card({
    Key? key,
    required this.itemIndex,
    required this.product,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: KDefaultPadding,
        vertical: KDefaultPadding / 2,
      ),
      //color: Colors.blueAccent,
      height: 160,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: 136,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: itemIndex.isEven ? kBlueColor : kSecondaryColor,
              boxShadow: [kDefaultShadow],
            ),
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
              height: 160,
              width: 200,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 136,
              width: size.width - 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: KDefaultPadding,
                        vertical: KDefaultPadding - 10),
                    child: Text(
                      product.title,
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: KDefaultPadding * 1.5,
                      vertical: KDefaultPadding / 4,
                    ),
                    decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(22),
                          bottomLeft: Radius.circular(22),
                        )),
                    child: Text('\$ ${product.price}'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
