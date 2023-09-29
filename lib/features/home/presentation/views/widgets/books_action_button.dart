import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksActionButton extends StatelessWidget {
  const BooksActionButton(
      {required this.onTapPreview,
      required this.previewTextButton,
      required this.price,
      super.key});
  final double price;
  final String previewTextButton;
  final void Function()? onTapPreview;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          BookButtonAction(
            text: '$price €',
            onTap: () {
              debugPrint('19.99€');
            },
          ),
          BookButtonAction(
            text: previewTextButton,
            onTap: onTapPreview,
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
