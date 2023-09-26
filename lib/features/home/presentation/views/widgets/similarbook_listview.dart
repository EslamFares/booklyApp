import 'package:flutter/material.dart';

import 'custom_book_img.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(left: 16, bottom: 16),
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) => const Padding(
                padding: EdgeInsets.only(right: 8),
                child: CustomBookImg(),
              )),
    );
  }
}
