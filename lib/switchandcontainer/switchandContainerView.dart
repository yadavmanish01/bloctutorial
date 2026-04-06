import 'package:bloc_practice/switchandcontainer/switchcontainer_bloc.dart';
import 'package:bloc_practice/switchandcontainer/switchcontainer_event.dart';
import 'package:bloc_practice/switchandcontainer/switchcontainer_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../constant/sizedBoxExtension.dart';

class Switchandcontainerview extends StatelessWidget {
  const Switchandcontainerview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Example2"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Notification",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                BlocBuilder<SwitchcontainerBloc, SwitchcontainerState>(
                  builder: (context, State){return Switch(value:State.isSwitch, onChanged: (value) {
                    context.read<SwitchcontainerBloc>().add(OnorOffNotification());
                  });}
                ),
              ],
            ),
            50.ph,
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            50.ph,
            Slider(value: 0.85, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
