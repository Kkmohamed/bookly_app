import 'package:bookly/features/home/presentation/views/widgets/future_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.16,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: const CustomBookImage(),
          );
        },
      ),
    );
  }
}
