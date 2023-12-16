import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/CounterGetX/counter_app.dart';
import 'package:getxproject/page/hight_wight.dart';
import 'package:getxproject/page/home_page.dart';
import 'package:getxproject/slider/slider.dart';

import 'Gridbtton/grid_page.dart';
import 'Image_Picker/image_body.dart';
import 'LoveApp/loveapp.dart';
import 'Sign_logIn/logIn/loginform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: false
      ),
      debugShowCheckedModeBanner: false,
      home: ImageBody(),
    );
  }
}


