import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxproject/Sign_logIn/logIn/logcontroller.dart';


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final LogInPageController logInPageController= Get.put(LogInPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(padding: EdgeInsets.only(top: 20,left: 15,right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: logInPageController.emailController.value,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                    )
                  ),
                ),
                SizedBox(height: 15,),
                TextFormField(
                  controller: logInPageController.passwordController.value,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                      )
                  ),
                ),
                SizedBox(height: 20,),
               Obx(() {
                 return  ElevatedButton(
                     onPressed: (){
                   logInPageController.LogInApi();
                 },
                     child: logInPageController.loading.value ?CircularProgressIndicator():Text('Submit'));
               })
              ],
            ),)),
    );
  }
}
