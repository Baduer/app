import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/responsive_builder.dart';

import 'components/large_login_icon.dart';
import 'components/login_icon.dart';
import 'components/signin_form.dart';
import 'components/signin_form_with_border.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        mobile: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: constraints,
                child: Center(
                  child: Column(
                    children: [
                      const Spacer(),
                      LoginIcon(size: constraints.maxHeight),
                      const Spacer(),
                      const SignInForm(),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        tablet: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: constraints,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: LargeLoginIcon(
                      size: constraints.maxWidth,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Spacer(),
                        SignFormWithBorder(),
                        Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          );
        },
        desktop: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: constraints,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: LargeLoginIcon(
                        size: constraints.maxWidth > 1200
                            ? 1200
                            : constraints.maxWidth),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const Expanded(
                    flex: 7,
                    child: Column(
                      children: [
                        Spacer(),
                        SignFormWithBorder(),
                        Spacer(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
