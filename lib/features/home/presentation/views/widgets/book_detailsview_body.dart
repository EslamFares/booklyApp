import 'package:bookly/features/home/presentation/views/widgets/bookdetails_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_bookdetails_appbar.dart';
import 'package:bookly/features/home/presentation/views/widgets/similerbooks_section.dart';
import 'package:flutter/material.dart';
import 'books_action_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomBookDetailsAppBar(),
        Expanded(
          // child: CustomScrollView(
          //   physics: const BouncingScrollPhysics(),
          //   slivers: [
          //     SliverFillRemaining(
          //       hasScrollBody: false,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                BookDetailsSection(),
                SizedBox(height: 20),
                BooksActionButton(),
                SizedBox(height: 50),
                SimilerBooksSection()
              ],
            ),
          ),
          //     ),
          //   ],
          // ),
        ),
      ],
    );
  }
}
