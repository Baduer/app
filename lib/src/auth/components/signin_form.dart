import 'package:flutter/material.dart';

import '../sign_up_screen.dart';
import 'app_assets.dart';
import 'custom_text_field.dart';
import 'gradient_line.dart';
import 'singup_button.dart';
import 'strings.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 704),
      child: Column(
        children: [
          const CustomTextField(
            icon: Icons.email,
            label: Strings.email,
          ),
          const SizedBox(height: 16),
          const CustomTextField(
            icon: Icons.lock,
            isObscure: true,
            label: Strings.lock,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                Strings.newPassword,
                style: TextStyle(color: Theme.of(context).colorScheme.tertiary),
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {},
              child: Text(
                Strings.login,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.background),
              ),
            ),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              GradientLine.endToStart(context),
              const SizedBox(width: 8),
              const Text(Strings.orSignUpWith),
              const SizedBox(width: 8),
              GradientLine.startToEnd(context),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SignUpButton(
                asset: AppAssets.google,
                onTap: () {},
              ),
              SignUpButton(
                asset: AppAssets.facebook,
                onTap: () {},
              ),
              SignUpButton(
                asset: AppAssets.apple,
                onTap: () {},
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(Strings.dontHaveAnAccount),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: const Text(
                  Strings.registerNew,
                  style: TextStyle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
