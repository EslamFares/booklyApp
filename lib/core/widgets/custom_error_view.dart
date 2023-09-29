import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomErrorView extends StatelessWidget {
  const CustomErrorView(this.errorMsg, {super.key});
  final String errorMsg;
  @override
  Widget build(BuildContext context) {
    return Text(
      errorMsg,
      style: KStyles.textStyle18,
    );
  }
}