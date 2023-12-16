import 'package:get/get.dart';

class SliderPage extends GetxController{
  RxDouble opacity=0.5.obs;
  colorController(double value){
     opacity.value=value;
  }
}