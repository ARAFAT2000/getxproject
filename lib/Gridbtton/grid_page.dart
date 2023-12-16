import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Gridbtton/gridcontroller.dart';


class GridButtonPage extends StatefulWidget {
  const GridButtonPage({super.key});

  @override
  State<GridButtonPage> createState() => _GridButtonPageState();
}

class _GridButtonPageState extends State<GridButtonPage> {
  GridPageController gridPageController= Get.put(GridPageController());
  @override
  Widget build(BuildContext context) {
    print('data');
    return Scaffold(

       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Obx(() =>  Center(
            child: Switch(value: gridPageController.data.value,
                onChanged: (value){
                  gridPageController.data.value=value;

            }),
          ))
         ],
       ),
    );
  }
}
