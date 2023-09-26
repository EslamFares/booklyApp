import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4f),
          size: 16,
        ),
        const SizedBox(width: 5),
        const Text(
          '4.8',
          style: KStyles.textStyle16,
        ),
        const SizedBox(width: 3),
        Text(
          '(2390)',
          style: KStyles.textStyle14.copyWith(color: Kconst.kGreyTextColor),
        )
      ],
    );
  }
}
