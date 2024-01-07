import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.arrowRightToBracket,
      size: size * 0.20,
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
