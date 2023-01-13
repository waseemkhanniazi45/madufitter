
import 'package:get/get.dart';
class GendarSelectionController extends GetxController{
  var selectedGendar = "".obs;
  onChangedGendar(var gendar){
    selectedGendar.value = gendar;
  }
}