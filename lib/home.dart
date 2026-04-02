import 'package:bloc_practice/Widgets/custom_button.dart';
import 'package:bloc_practice/counterview.dart';
import 'package:bloc_practice/switchandcontainer/switchandContainerView.dart';
import 'package:flutter/material.dart';

import 'constant/sizedBoxExtension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(title: "CounterExample",onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Counterview()),
            );},),
20.ph,
            CustomButton(title: "ContainerandSwitchExample",onPressed: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Switchandcontainerview()),
            );},),
          ],
        ),
      ),
    );
  }
}
