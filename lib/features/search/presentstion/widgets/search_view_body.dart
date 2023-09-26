import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_back_button.dart';
import 'package:bookly/features/home/presentation/views/widgets/bestseller_list_item.dart';
import 'package:bookly/features/search/presentstion/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(
            children: [
              BackButtonCupertino(),
              SizedBox(width: 8),
              Expanded(child: CustomSearchTextField()),
            ],
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        const Text('Result', style: KStyles.textStyle18),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
              itemCount: 15,
              padding: EdgeInsets.zero,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => const BookListItem()),
        )
      ],
    );
  }
}
