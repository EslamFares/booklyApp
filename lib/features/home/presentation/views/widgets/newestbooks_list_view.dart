import 'package:flutter/material.dart';

import 'newestbooks_list_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true, //use SliverFillRemaining in customSliver bdalha
        itemCount: 15,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BookListItem());
  }
}
