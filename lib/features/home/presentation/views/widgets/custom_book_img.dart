import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImg extends StatelessWidget {
  const CustomBookImg({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .65,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AssetsPathes.tetsImg,
            ),
          ),
        ),
      ),
    );
  }
}
