import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .625 / 1,
      child: Container(
        decoration: BoxDecoration(
          image:  DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
