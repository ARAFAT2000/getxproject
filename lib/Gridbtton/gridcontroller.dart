import 'package:get/get.dart';

class GridPageController extends GetxController{
 RxBool data=false.obs;
 Switchdata(bool value){
   data.value=value;
 }
}