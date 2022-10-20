import 'package:curso/widgets/custom_button.dart';
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
  final _formKey = GlobalKey<FormState>();
  bool buttonClick = false;

  void _login(){
    if(buttonClick){
      return;
    }
    setState(() {
      buttonClick = true;
    });

    Future.delayed(
      const Duration(seconds: 2),
      (){
        //login
      }
    );

    setState(() {
      buttonClick = false;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const CustomLogo(),
              const SizedBox(height: 50),
              CustomEdit(
                controller: textUsuario, 
                hintText: 'Informe o seu email', 
                icon: Icons.person,
                validator: (value){
                  if(value == null){
                    return "Informe o email";
                  }
                  if(value.trim() == ""){
                    return "Informe o email";
                  }
                  return null;
                } ,
              ),
              const SizedBox(height: 15),
              CustomEdit(
                controller: textSenha, 
                hintText: 'Informe a senha', 
                icon: Icons.password,
                isPassword: true,
                validator: (value){
                  if(value == null){
                    return "Informe o senha";
                  }
                  if(value.trim() == ""){
                    return "Informe o senha";
                  }
                  return null;
                } 
              ),
              const SizedBox(height: 15),
              CustomButton(
                caption: "Entrar",
                onTap: _login,
                loading: buttonClick,
              )
            ],
          ),
        )
      )
    );
  }
}