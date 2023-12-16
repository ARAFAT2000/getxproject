import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getxproject/page/next_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
      title: Text(' GetX'),
      ),
      body:Column(
        children: [
             Card(
               child: ListTile(
                 title: Text('Arafat Islam'),
                 subtitle: Text('Flutter Developer'),
               onTap: (){
                   Get.defaultDialog(
                       title: 'Hi , Arafat',
                   barrierDismissible: false,
                   buttonColor: Colors.yellow,
                   backgroundColor: Colors.deepPurple,
                   confirmTextColor: Colors.red,
                   confirm: TextButton(onPressed: (){
                     ///Navigator.pop(context);
                     Get.back();
                   }, child: Text('Ok')),
                     cancel: TextButton(onPressed: (){}, child: Text('Cancel')),
                     contentPadding: EdgeInsets.only(left: 20,right: 10,top: 5),
                     content: Column(
                       children: [
                        Text('Dart is a Programming langguage'),
                         Text('Flutter is a Dart langguages framework'),
                       ],
                     )

                   );
                   
               },
               ),
             ),
          Card(
            child: ListTile(
              title: Text('GetX statemanagement '),
              subtitle: Text('GetX buttom sheet '),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light),
                          title: Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  )
                );

              },
            ),
          ),
          SizedBox(
            child: InkWell(
                onTap: (){
                  Get.to(SecondPage());
                },
                child: Text('Next Page')),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.snackbar('Arafat islam', 'Learn Flutter Completely',
                colorText: Colors.red,
               duration: Duration(seconds: 2),
              backgroundColor: Colors.deepPurple,
              snackPosition:SnackPosition.TOP,
            );
          },
      child: Icon(Icons.add),),
    );
  }
}
