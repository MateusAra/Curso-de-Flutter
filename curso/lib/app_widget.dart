import 'package:curso/pages/home/home_page.dart';
import 'package:curso/pages/login/login_page.dart';
import './pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import './widgets/routes.dart';
import 'package:curso/pages/lembretes/lembretes_page.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Lembretes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.INITIAL : ((context) => const SplashPage()),
        Routes.LOGIN: ((context) => const LoginPage()),
        Routes.HOME: ((context) => const HomePage()),
        Routes.LEMBRETES: (context) => const LembretePage(),
      },
      initialRoute: Routes.INITIAL,
    );
  }
}