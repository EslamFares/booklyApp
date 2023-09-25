import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(right: 16, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(AssetsDatePathes.logoImg, width: 85),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 22),
                splashRadius: 24)
          ],
        ),
      ),
    );
  }
}
