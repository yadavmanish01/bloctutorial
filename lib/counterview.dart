import 'package:bloc_practice/counter/counter_bloc.dart';
import 'package:bloc_practice/counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterview extends StatelessWidget {
  const Counterview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<CounterBloc,CounterState>(builder: (context,state){return Text(state.counter.toString());}),
          Row(
            children: [
              ElevatedButton(onPressed: () {context.read<CounterBloc>().add(IncrementEvent());}, child: Icon(Icons.add)),
              ElevatedButton(onPressed: () {context.read<CounterBloc>().add(DecrementEvent());}, child: Icon(Icons.minimize_outlined)),
            ],
          ),
        ],
      ),
    );
  }
}
