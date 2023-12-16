import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/CounterGetX/counter_controller.dart';

class CounterApplication extends StatefulWidget {
  const CounterApplication({super.key});

  @override
  State<CounterApplication> createState() => _CounterApplicationState();
}

class _CounterApplicationState extends State<CounterApplication> {
  final CounterController controller= Get.put(CounterController());

  int counter= 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx((){
                return Text( controller.counter.toString());
              }),
            )
          ],
        ),
      ),
      floatingActionButton:
      FloatingActionButton(onPressed: (){
        controller.incrementCounter();
      },
        child: Icon(Icons.add),),
    );
  }
}
