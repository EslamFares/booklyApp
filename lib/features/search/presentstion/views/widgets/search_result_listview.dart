import 'package:bookly/core/widgets/custom_loading_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/newestbooks_list_item.dart';
import 'package:bookly/features/search/presentstion/bloc/cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/styles.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Row(
          children: [
            Text('Search Result', style: KStyles.textStyle18),
          ],
        ),
        const SizedBox(height: 10),
        BlocBuilder<SearchCubit, SearchState>(builder: (context, state) {
          if (state is SearchSuccessState && state.books.length > 1) {
            return Expanded(
              child: ListView.builder(
                  itemCount: state.books.length,
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) =>
                      BookListItem(state.books[index])),
            );
          } else if (state is SearchFailureState) {
            return const Expanded(
                child: Center(child: Text('No Data Founded...')));
          } else if (state is SearchloadingState) {
            return const Expanded(child: Center(child: CustomLoadingView()));
          } else {
            return const Expanded(
                child: Center(child: Text('search to show data...')));
          }
        })
      ],
    );
  }
}
