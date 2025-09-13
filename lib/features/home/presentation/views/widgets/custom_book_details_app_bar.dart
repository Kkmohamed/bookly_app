
import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.close, size: 32),
        ),
        Spacer(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart, size: 32),
        ),
      ],
    );
  }
}
