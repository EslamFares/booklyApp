import 'package:flutter/material.dart';

import 'custom_home_appbar.dart';

class HonmeViewBody extends StatelessWidget {
  const HonmeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHomeAppBar(),
      ],
    );
  }
}
