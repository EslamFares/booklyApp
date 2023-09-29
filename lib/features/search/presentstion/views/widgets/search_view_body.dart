import 'package:bookly/core/widgets/custom_back_button.dart';
import 'package:bookly/features/search/presentstion/views/widgets/custom_search_textfield.dart';
import 'package:bookly/features/search/presentstion/views/widgets/search_result_listview.dart';
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
