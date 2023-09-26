import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 10, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: const FaIcon(FontAwesomeIcons.xmark, size: 22),
              splashRadius: 24),
          IconButton(
              onPressed: () {},
              icon: const FaIcon(FontAwesomeIcons.cartShopping, size: 22),
              splashRadius: 24)
        ],
      ),
    );
  }
}
