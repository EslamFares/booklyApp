import 'package:bookly/features/home/presentation/views/widgets/featurebooks_listview.dart';
import 'package:flutter/material.dart';
import 'custom_home_appbar.dart';

class HonmeViewBody extends StatelessWidget {
  const HonmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          CustomHomeAppBar(),
          FeaturedBooksListView(),
        ],
      ),
    );
  }
}
