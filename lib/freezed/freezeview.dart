import 'package:bloc_practice/freezed/freezedfile.dart';
import 'package:flutter/material.dart';

class Freezeview extends StatelessWidget {
  const Freezeview({super.key});

  @override
  Widget build(BuildContext context) {
    //earlier passing data in constructor
    PersonMModel personModel = PersonMModel(name: "Manish");
    PersonMModel personModel1 = PersonMModel();
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
         Map<String,dynamic>data = {
           'name':'Manish Yadav'
         };
         //we can pass data like this now
         PersonMModel model = PersonMModel.fromJson(data);
         print(model.name.toString());

         //override existing value
         model.copyWith(name: "new value");
        }, child: Text("Freezed model")),
      ),
    );
  }
}
