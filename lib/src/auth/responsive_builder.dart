import 'package:flutter/material.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  final Widget Function(BuildContext, BoxConstraints) mobile;
  final Widget Function(BuildContext, BoxConstraints) tablet;
  final Widget Function(BuildContext, BoxConstraints) desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return switch (constraints.maxWidth) {
          < 700 => mobile(context, constraints),
          >= 700 && < 1200 => tablet(context, constraints),
          >= 1200 => desktop(context, constraints),
          _ => mobile(context, constraints),
        };
      }),
    );
  }
}
