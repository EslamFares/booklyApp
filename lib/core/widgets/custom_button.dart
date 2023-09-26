import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookButtonAction extends StatelessWidget {
  const BookButtonAction(
      {super.key,
      this.bgColor,
      this.textColor,
      this.borderRadius,
      required this.text,
      this.onTap});
  final String text;
  final Color? bgColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 50,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: bgColor ?? Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: borderRadius ??
                        const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)))),
            onPressed: onTap ?? () {},
            child: Text(
              text,
              style: KStyles.textStyle18.copyWith(
                  color: textColor ?? Colors.black,
                  fontWeight: FontWeight.w900),
            )),
      ),
    );
  }
}
