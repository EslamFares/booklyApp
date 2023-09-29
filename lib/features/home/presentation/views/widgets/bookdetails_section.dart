import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'custom_book_img.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
              width: w * .5, child: const CustomBookImg(Kconst.imgUrlTest)),
        ),
        const Text('The Jungle Book', style: KStyles.textStyle30),
        const SizedBox(height: 5),
        Text('Rudyard Kipling',
            style: KStyles.textStyle16.copyWith(color: Kconst.kGreyTextColor)),
        const SizedBox(height: 15),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
      ],
    );
  }
}
