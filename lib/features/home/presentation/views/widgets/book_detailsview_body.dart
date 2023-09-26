import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_bookdetails_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_img.dart';
import 'package:flutter/material.dart';

import 'books_action_button.dart';
import 'similarbook_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(width: w * .5, child: const CustomBookImg()),
        ),
        const Text('The Jungle Book', style: KStyles.textStyle30),
        const SizedBox(height: 5),
        Text('Rudyard Kipling',
            style: KStyles.textStyle16.copyWith(color: Kconst.kGreyTextColor)),
        const SizedBox(height: 15),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 20),
        const BooksActionButton(),
        const SizedBox(height: 25),
        const Padding(
            padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('You can also like', style: KStyles.textStyle16))),
        const SimilarBookListView(),
      ],
    );
  }
}
