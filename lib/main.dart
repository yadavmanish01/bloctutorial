import 'package:bloc_practice/config/routes/routes_name.dart';
import 'package:bloc_practice/counter/counter_bloc.dart';
import 'package:bloc_practice/counterview.dart';
import 'package:bloc_practice/freezed/freezeview.dart';
import 'package:bloc_practice/home.dart';
import 'package:bloc_practice/switchandcontainer/switchcontainer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => CounterBloc()),
      BlocProvider(create: (_)=>SwitchcontainerBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesName.homePage,
        onGenerateRoute: Routes.generateRoute,
        // home: HomePage(),
        home: Freezeview(),
      ),
    );
  }
}
