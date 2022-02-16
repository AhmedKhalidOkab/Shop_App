import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class products {
  final String image;
  final String title;
  final double price;
  final Color color;

  products(
      {required this.image,
      required this.title,
      required this.price,
      required this.color});
}

List<products> productsitems = [
  products(
    image: 'assets/images/product_0.png',
    title: 'Long Sleeve shirts ',
    price: 145,
    color: bgColor,
  ),
  products(
    image: 'assets/images/product_1.png',
    title: 'casual henley shirts ',
    price: 145,
    color: bgColor,
  ),
  products(
    image: 'assets/images/product_2.png',
    title: 'Long Sleeve shirts ',
    price: 145,
    color: bgColor,
  ),
  products(
    image: 'assets/images/product_3.png',
    title: 'Long Sleeve shirts ',
    price: 145,
    color: bgColor,
  ),
];
