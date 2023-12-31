//Tela de Login
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/components/custom_text_field.dart';
import 'package:flutter_application_1/src/auth/components/menu_icons.dart';
import 'package:flutter_application_1/src/auth/sign_up_screen.dart';
import '../auth/components/class_strings.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          //Icon Calendar
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Container(
              alignment: Alignment.center,
              child: const Icon(
                Icons.calendar_month,
                size: 220,
                color: Colors.purple,
              ),
            ),
          ),
        
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, //Esticando o botão com a mesma largura com os campos de texto
              children: [
                const CustomTextField(
                  icon: Icons.email,
                  label: 'E-mail',
                ),
                const CustomTextField(
                  icon: Icons.lock,
                  isObscure: true,
                  label: Strings.lock,
                ),
        
                //Esqueceu a senha
                //Usando o Align p string ficar no canto direito
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      Strings.newPassword,
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
        
                //Botão Login
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                    onPressed: () {},
                    child: const Text(
                      Strings.login,
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
        
                //Entrar com google e Apple
                const MenuIcons(),
                
                //Cadastro
                SizedBox(
                  height: 40,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.purple,
        
                      )
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: 
                        (context) => const SignUpScreen(),
                        ),
                        );                      
                    },
                    child: const Text(
                      Strings.registerNew,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
