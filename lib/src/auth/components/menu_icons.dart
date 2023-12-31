//Página somente dos dois botões do google e apple
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/auth/components/class_assets.dart';

class MenuIcons extends StatelessWidget {
  const MenuIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Icons google e Apple
          OutlinedButton(  //vc pode extrair esse widget para uma classe separada
            onPressed: () {},
            child: Image.asset(
              AppAssets.google,
              ), 
          ),

          OutlinedButton(
            onPressed: () {},
            child: Image.asset(
              AppAssets.apple,
           ),
          ),
         
          
        ],
      ),
    );
  }
}
