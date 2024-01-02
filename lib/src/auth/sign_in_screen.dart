import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/components/app_assets.dart';
import 'package:flutter_application_1/src/auth/components/custom_text_field.dart';
import 'package:flutter_application_1/src/auth/sign_up_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/gradient_line.dart';
import 'components/singup_button.dart';
import 'components/strings.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: height,
              maxWidth: 720,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    child: Icon(
                      FontAwesomeIcons.arrowRightToBracket,
                      size: height * 0.20,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const Spacer(),
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
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary),
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
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.background),
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
                  const Spacer(),
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
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
