import 'package:flutter/material.dart';

import 'signin_form.dart';

class SignFormWithBorder extends StatelessWidget {
  const SignFormWithBorder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.onBackground.withAlpha(100)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const SignInForm(),
    );
  }
}
