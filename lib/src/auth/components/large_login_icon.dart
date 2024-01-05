import 'package:flutter/material.dart';

import 'login_icon.dart';

class LargeLoginIcon extends StatelessWidget {
  const LargeLoginIcon({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        color: Theme.of(context).colorScheme.primary.withAlpha(50),
        child: LoginIcon(size: size));
  }
}
