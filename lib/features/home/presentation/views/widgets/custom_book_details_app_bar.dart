import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
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
