import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class BackButtonCupertino extends StatelessWidget {
  const BackButtonCupertino({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => GoRouter.of(context).pop(),
        icon: const Icon(CupertinoIcons.back, size: 30),
        splashRadius: 24);
  }
}
