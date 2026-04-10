import 'package:bloc_practice/services/splash/splash_services.dart';
import 'package:flutter/material.dart';

class Splashview extends StatefulWidget {
  const Splashview({super.key});

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  SplashServices _splashServices =SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _splashServices.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Splash view"),);
  }
}
