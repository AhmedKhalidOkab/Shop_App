import 'package:flutter/material.dart';

import 'package:shop_app/constants.dart';

class CustomButtomDrawer extends StatelessWidget {
  final Icon icon;
  final VoidCallback pressed;
  final String text;
  const CustomButtomDrawer({
    Key? key,
    required this.icon,
    required this.pressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Row(
        children: [
          IconButton(
            onPressed: pressed,
            icon: icon,
            color: primaryColor,
          ),
          Container(
            margin: const EdgeInsets.all(defaultPadding),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
