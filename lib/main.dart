import 'package:bloc_practice/counter/counter_bloc.dart';
import 'package:bloc_practice/counterview.dart';
import 'package:bloc_practice/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=>CounterBloc() ,
    child:MaterialApp(debugShowCheckedModeBanner: false,
      home:HomePage()));
  }
}
