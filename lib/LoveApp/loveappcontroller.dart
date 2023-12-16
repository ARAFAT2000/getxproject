import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoveappController extends GetxController{
  RxList<String>datalist=['Orange','Apple','Banana','Guava'].obs;
  RxList<dynamic>tempfruit=[].obs;

AddTofavorite(String value){
  tempfruit.add(value);
}

RemoveList(String value){
tempfruit.remove(value);
}

}