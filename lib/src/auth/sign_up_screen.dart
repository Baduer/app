//Tela de Cadastro
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/sign_in_screen.dart';
import '../auth/components/custom_text_field.dart';
import '../auth/components/class_strings.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              //Seta de voltar
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.chevron_left,
                      size: 50,
                    ),
                  ),
                ),
              ),

              //Icon book
              const Icon(
                Icons.book,
                size: 270,
                color: Colors.purple,
              ),

              Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    //Primeiro Nome
                    const CustomTextField(
                      icon: Icons.face,
                      label: Strings.name,
                    ),
                    //Cadastrar Email
                    const CustomTextField(
                      icon: Icons.email,
                      label: Strings.registeremail,
                    ),
                    //Nova Senha
                    const CustomTextField(
                      isObscure: true,
                      icon: Icons.lock,
                      label: Strings.newlock,
                    ),
                    //Confirmar Senha
                    const CustomTextField(
                      isObscure: true,
                      icon: Icons.lock,
                      label: Strings.confirmPassword,
                    ),

                    //Botão Cadastrar
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          Strings.register,
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
