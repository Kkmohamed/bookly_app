import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/future_list_view_item.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  SizedBox(height: 12),
                  const CustomBookDetailsAppBar(),
                  SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                    child: CustomBookImage(),
                  ),
                  SizedBox(height: 40),
                  Text('The Jungle Book', style: Styles.textStyle30),
                  SizedBox(height: 6),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'Rudyard Kipling',
                      style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  BookRating(mainAxisAlignment: MainAxisAlignment.center),
                  SizedBox(height: 37),
                  BooksAction(),
                  Expanded(child: SizedBox(height: 50)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You can also like',
                      style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  SimilarBooksListview(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
