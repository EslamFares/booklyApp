import 'package:bookly/features/home/presentation/bloc/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_view.dart';
import '../../../../../core/widgets/custom_loading_view.dart';
import 'newestbooks_list_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessState) {
          return ListView.builder(
              shrinkWrap: true, //use SliverFillRemaining in customSliver bdalha
              itemCount: state.books.length,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) =>
                  BookListItem(state.books[index]));
        } else if (state is NewestBooksFailureState) {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: CustomErrorView(state.errorMsg));
        } else {
          return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: const CustomLoadingView());
        }
      },
    );
  }
}
