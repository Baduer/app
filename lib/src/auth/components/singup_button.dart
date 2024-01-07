import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.asset,
    required this.onTap,
  });

  final String asset;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black12,
          border: Border.all(color: Theme.of(context).colorScheme.primary),
        ),
        child: Image.asset(
          asset,
        ),
      ),
    );
  }
}
