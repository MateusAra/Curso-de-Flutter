import 'package:curso/widgets/custom_edit.dart';
import 'package:curso/widgets/custom_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController textUsuario = TextEditingController();
  final TextEditingController textSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            const CustomLogo(),
            const SizedBox(height: 50),
            CustomEdit(
              controller: textUsuario, 
              hintText: 'Informe o seu email', 
              icon: Icons.person,
            ),
            const SizedBox(height: 15),
            CustomEdit(
              controller: textSenha, 
              hintText: 'Informe a senha', 
              icon: Icons.password,
              isPassword: true,
            ),
            const SizedBox(height: 15),
          Material(
            color: Colors.blue,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: InkWell(
              onTap: (){},
              child: Ink(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                height: 60,
                child: Center(
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                    ),
                  ) 
                  ),

              )
            )
          )
          ],
        )
      )
    );
  }
}