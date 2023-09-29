import 'package:bookly/core/utils/launch_url.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_bookdetails_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similerbooks_section.dart';
import 'package:flutter/material.dart';
import 'books_action_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody(this.book, {Key? key}) : super(key: key);
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Expanded(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                BookDetailsSection(book: book),
                const SizedBox(height: 20),
                BooksActionButton(
                  previewTextButton: book.volumeInfo!.previewLink != null
                      ? 'Free preview'
                      : 'Not Avaliable',
                  price: book.volumeInfo!.pageCount!.toDouble(),
                  onTapPreview: () {
                    launchCustomUrl(context, book.volumeInfo!.previewLink!);
                  },
                ),
                const SizedBox(height: 50),
                const SimilerBooksSection()
              ],
            ),
          ),
        ),
      ],
    );
  }
}
