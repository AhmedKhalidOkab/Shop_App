import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class circularColors extends StatelessWidget {
  final Color colorchosen;
  final bool isActive;
  final VoidCallback prressed;
  const circularColors({
    Key? key,
    required this.colorchosen,
    required this.isActive,
    required this.prressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: prressed,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
            border:
                Border.all(color: isActive ? primaryColor : Colors.transparent),
            shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: colorchosen,
        ),
      ),
    );
  }
}
