import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), const FutureBooksListView()]);
  }
}

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AssetsData.book1),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

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
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: const FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
