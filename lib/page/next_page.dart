import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Second Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            InkWell(
                onTap: (){
                  Get.back();
                },
                child: Text('Back ')),
          ],
        ),
      ),
    );
  }
}
