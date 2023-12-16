
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Image_Picker/pickerget.dart';


class ImageBody extends StatefulWidget {
  const ImageBody({super.key});

  @override
  State<ImageBody> createState() => _ImageBodyState();
}

class _ImageBodyState extends State<ImageBody> {
  ImagePickerController controller= Get.put(ImagePickerController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: controller.imagePath.isNotEmpty ?
              FileImage(File(controller.imagePath.toString())):null,
            ),
            TextButton(onPressed: (){
              controller.GetImage();
            },
                child: Text('Pick Image'))
          ],
        );
      })
    );
  }
}
