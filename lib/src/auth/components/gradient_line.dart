import 'package:flutter/material.dart';

class GradientLine extends StatelessWidget {
  const GradientLine._({
    required this.colors,
  });

  final List<Color> colors;

  factory GradientLine.startToEnd(BuildContext context) =>
      GradientLine._(colors: [
        Theme.of(context).colorScheme.primary,
        Theme.of(context).colorScheme.background,
      ]);

  factory GradientLine.endToStart(BuildContext context) =>
      GradientLine._(colors: [
        Theme.of(context).colorScheme.background,
        Theme.of(context).colorScheme.primary,
      ]);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
        ),
      ),
    );
  }
}
