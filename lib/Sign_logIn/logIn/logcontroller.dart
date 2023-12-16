import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LogInPageController extends GetxController{
  final emailController= TextEditingController().obs;
  final passwordController= TextEditingController().obs;
  RxBool loading=false.obs;

  void LogInApi()async{
    loading.value=true;
  try{
    final response= await post(Uri.parse('https://reqres.in/api/login',),
        body:jsonEncode({
          "email": emailController.value.text,
          "password": passwordController.value.text,
        }),
        headers: {
          'Content-Type':'application/json'
        }
    );
    if(response.statusCode==200){
      loading.value=false;
      Get.snackbar('Congratulation','Succesfully Login');
    }else{
      loading.value=false;
      Get.snackbar('Sorry','LogIn failed ');
    }

  }catch(e){
    loading.value=false;
  }


  }
}