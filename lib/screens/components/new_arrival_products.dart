// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/components/products_scrolling.dart';
import 'package:shop_app/screens/details/details_screen.dart';

class NewArrival_Products extends StatelessWidget {
  const NewArrival_Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(right: defaultPadding),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            productsitems.length,
            (index) => productsItems(
              color: productsitems[index].color,
              image: productsitems[index].image,
              price: productsitems[index].price,
              title: productsitems[index].title,
              pressd: () {
                Get.to(() => Details_Screen(product: productsitems[index]));
              },
            ),
          ),
        ),
      ),
    );
  }
}
