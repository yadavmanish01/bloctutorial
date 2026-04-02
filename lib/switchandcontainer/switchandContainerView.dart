import 'package:flutter/material.dart';

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
                Switch(value: true, onChanged: (value) {}),
              ],
            ),
            50.ph,
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(color:Colors.red,borderRadius: BorderRadius.circular(20)),
            ),
            50.ph,
            Slider(value: 0.85, onChanged:(value){})
          ],
        ),
      ),
    );
  }
}
