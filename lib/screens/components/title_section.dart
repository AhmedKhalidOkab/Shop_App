import 'package:flutter/material.dart';

class titleSection extends StatelessWidget {
  final String text;
  final VoidCallback pressed;
  const titleSection({
    Key? key,
    required this.text,
    required this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
        TextButton(
            onPressed: pressed,
            child: const Text(
              'See All',
              style: TextStyle(color: Colors.black54),
            ))
      ],
    );
  }
}
