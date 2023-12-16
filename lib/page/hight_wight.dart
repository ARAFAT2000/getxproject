import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWeight extends StatefulWidget {
  const HeightWeight({super.key});

  @override
  State<HeightWeight> createState() => _HeightWeightState();
}

class _HeightWeightState extends State<HeightWeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Height - Weight'),
      ),
      body: Container(
        color: Colors.deepPurple,
        height: Get.height,
        width: Get.width,
        child: Center(child: Text('Center')),
      ),
    );
  }
}
