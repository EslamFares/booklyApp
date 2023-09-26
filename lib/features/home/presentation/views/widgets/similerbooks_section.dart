import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/similarbook_listview.dart';
import 'package:flutter/material.dart';

class SimilerBooksSection extends StatelessWidget {
  const SimilerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.only(left: 16, bottom: 8),
            child: Text('You can also like', style: KStyles.textStyle16)),
        SimilarBookListView(),
        SizedBox(height: 10),
      ],
    );
  }
}
