import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'loveappcontroller.dart';

class LoveApp extends StatefulWidget {
  const LoveApp({super.key});

  @override
  State<LoveApp> createState() => _LoveAppState();
}

class _LoveAppState extends State<LoveApp> {
  final LoveappController loveappController=Get.put(LoveappController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love Application'),
      ),
      body: ListView.builder(
        itemCount: loveappController.datalist.length,
          itemBuilder:(context,index){
            return Card(
              child: ListTile(
                onTap: (){
                  if(loveappController.tempfruit.contains(loveappController.datalist[index].toString())){
                    loveappController.RemoveList(loveappController.datalist[index].toString());
                  }else{
                    loveappController.AddTofavorite(loveappController.datalist[index].toString());
                  }
                  setState(() {

                  });
                },
                title: Text(loveappController.datalist[index].toString()),
                trailing: Icon(Icons.favorite,
                  color: loveappController.tempfruit.contains(loveappController.datalist[index].toString())?Colors.red:Colors.white,),
              ),
            );
          }),
    );
  }
}
