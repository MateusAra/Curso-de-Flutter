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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          const CustomLogo(),
          CustomEdit(
            controller: textUsuario, 
            hintText: 'Informe o seu email', 
            icon: Icons.person,
            )
        ],
      )
    );
  }
}