import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/future_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl:
                bookModel.volumeInfo.imageLinks?.thumbnail ??
                'https://ul.postcrest.com/vda0in12x6z7yots39e0r97bp8dt.png?format=webp&width=832',
          ),
        ),
        SizedBox(height: 40),
        Text(
          bookModel.volumeInfo.title ?? '',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '',
            style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(height: 16),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 4,
          count: 2390,
        ),
        SizedBox(height: 37),
        BooksAction(bookModel: bookModel),
      ],
    );
  }
}
