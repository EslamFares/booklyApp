import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/featurebooks_listview.dart';
import 'package:flutter/material.dart';
import 'newestbooks_list_view.dart';
import 'custom_home_appbar.dart';

class HonmeViewBody extends StatelessWidget {
  const HonmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHomeAppBar(),
        Expanded(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FeaturedBooksListView(),
                    SizedBox(height: 40),
                    Padding(
                        padding: EdgeInsets.only(left: 16),
                        child:
                            Text('Newest Books', style: KStyles.textStyle18)),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              SliverToBoxAdapter(child: NewestBooksListView())
            ],
          ),
        ),
      ],
    );
  }
}
