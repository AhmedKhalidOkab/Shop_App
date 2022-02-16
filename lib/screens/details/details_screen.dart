// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_app/constants.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/details/circular_color.dart';

class Details_Screen extends StatelessWidget {
  final products product;
  const Details_Screen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  'assets/icons/Heart.svg',
                  height: 20,
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * .4,
            //** 40% of  Screen */
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(defaultPadding * 3),
                      topRight: Radius.circular(defaultPadding * 3))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.black),
                      ),
                      Text(
                        '\$' + product.price.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                      'A Henley shirt is a collarless and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.[1][2][3] It essentially is a collarless polo shirt. The sleeves may be either short or long, and  '),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Color',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      circularColors(
                        isActive: false,
                        colorchosen: const Color(0XFFBEE8EA),
                        prressed: () {},
                      ),
                      circularColors(
                        isActive: true,
                        colorchosen: const Color(0XFF141B4A),
                        prressed: () {},
                      ),
                      circularColors(
                        isActive: false,
                        colorchosen: const Color(0XFFF4E5C3),
                        prressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Add To Cart',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(primaryColor),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        fixedSize:
                            MaterialStateProperty.all(const Size(250, 60)),
                        animationDuration: const Duration(milliseconds: 50),
                        overlayColor: MaterialStateProperty.all(Colors.green),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
