import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/slider/slider_controller.dart';

class Sliderpage extends StatefulWidget {
  const Sliderpage({super.key});

  @override
  State<Sliderpage> createState() => _SliderpageState();
}

class _SliderpageState extends State<Sliderpage> {
  final SliderPage sliderpage= Get.put(SliderPage());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(() => Center(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red.withOpacity(sliderpage.opacity.value),
            ),
          ),),
        Obx(() =>   Slider(
            value: sliderpage.opacity.value,
            onChanged: (value){
              sliderpage.opacity.value= value;

            }),)
        ],
      ),
    );
  }
}
