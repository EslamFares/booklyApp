import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          BookButtonAction(
            text: '19.99€',
            onTap: () {
              debugPrint('19.99€');
            },
          ),
          BookButtonAction(
            text: 'Free preview',
            onTap: () {
              debugPrint('Free preview');
            },
            bgColor: const Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
        ],
      ),
    );
  }
}
