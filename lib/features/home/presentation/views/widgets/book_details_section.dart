import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import '../../../../../core/widgets/custom_network_img.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
              width: w * .5,
              child: CustomNetWorkImg(
                  book.volumeInfo!.imageLinks?.thumbnail ?? '')),
        ),
        Text(book.volumeInfo!.title!,
            style: KStyles.textStyle30, textAlign: TextAlign.center),
        const SizedBox(height: 5),
        Text(book.volumeInfo!.authors?[0] ?? 'UnKown',
            style: KStyles.textStyle16.copyWith(color: Kconst.kGreyTextColor)),
        const SizedBox(height: 15),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rate: book.volumeInfo!.averageRating != null
              ? book.volumeInfo!.averageRating!.toString()
              : '4.8',
          countRate: book.volumeInfo!.ratingsCount != null
              ? book.volumeInfo!.ratingsCount!.toString()
              : '2564',
        )
      ],
    );
  }
}
