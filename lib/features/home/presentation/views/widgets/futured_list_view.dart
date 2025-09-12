import 'package:bookly/features/home/presentation/views/widgets/future_list_view_item.dart';
import 'package:flutter/material.dart';

class FutureBooksListView extends StatelessWidget {
  const FutureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
