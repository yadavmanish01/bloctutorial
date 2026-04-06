import 'package:bloc_practice/cleancode/view/home/homeScreen.dart';
import 'package:bloc_practice/cleancode/view/login/loginScreen.dart';
import 'package:bloc_practice/cleancode/view/splash/splashScreen.dart';
import 'package:bloc_practice/config/routes/routes_name.dart';
import 'package:bloc_practice/counterview.dart';
import 'package:bloc_practice/home.dart';
import 'package:bloc_practice/switchandcontainer/switchandContainerView.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => Splashscreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (context) => Homescreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (context) => Loginscreen());
      case RoutesName.homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case RoutesName.counterScreen:
        return MaterialPageRoute(builder: (context) => Counterview());
      case RoutesName.example2Screen:
        return MaterialPageRoute(builder: (context) => Switchandcontainerview());
        default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(body: Center(child: Text("No Route Generated")));
          },
        );
    }
  }
}
