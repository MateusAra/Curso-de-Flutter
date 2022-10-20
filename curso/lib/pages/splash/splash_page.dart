import 'package:curso/widgets/custom_logo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/routes.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool textAnimated = false;
  bool logoAnimated = false;
  @override
  void initState(){
      super.initState();

      Future.delayed(
        const Duration(seconds: 1),
        (){
          setState(() {
            textAnimated = true;
          });

          Future.delayed(
            const Duration(seconds: 1),
            (){
            setState(() {
              logoAnimated = true;
            });

            Future.delayed(
              const Duration(seconds: 1),
              (() {
                Navigator.of(context).pushReplacementNamed(Routes.LOGIN);
              })
              );
          });
        }
      );
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
          children:[
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              bottom: textAnimated? 250: -500,
              left: 0,
              right: 0,
              child: const Text(
                'Flutterama: Descomplicando a '
                'programação em Flutter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              )  
            ),
            AnimatedPositioned(
              duration: const Duration(seconds: 1),
              top: textAnimated? 200: -500,
              left: 0,
              right: 0,
              child: const CustomLogo(),
            ),
          ],
      ),
    );

  }
} 