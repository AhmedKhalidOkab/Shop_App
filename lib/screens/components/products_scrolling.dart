import 'package:flutter/material.dart';

import 'package:shop_app/constants.dart';

class productsItems extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final Color color;
  final VoidCallback pressd;
  const productsItems({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.color,
    required this.pressd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressd,
      child: Padding(
        padding: const EdgeInsets.only(right: defaultPadding),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(defaultPadding)),
          width: 140,
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(defaultPadding)),
                  height: 145,
                  width: 130,
                  child: Image.asset(image)),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: defaultPadding / 5,
                  ),
                  Text(
                    '\$' + price.toString(),
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
