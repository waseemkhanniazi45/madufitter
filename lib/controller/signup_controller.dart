import 'package:get/get.dart';

class SignUpController extends GetxController{
  var isProfilePicPathSet = false.obs;
  var profilePath = "".obs;

  void setProfileImagePath(String path){
    profilePath.value = path;
    isProfilePicPathSet.value = true;

  }
}