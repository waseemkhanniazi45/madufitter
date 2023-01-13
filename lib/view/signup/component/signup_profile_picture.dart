import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:madufitter/controller/signup_controller.dart';
import 'package:madufitter/view/custom_widgets/my_theme.dart';

// ignore: must_be_immutable
class SignUpProfilePicture extends StatelessWidget {
  File? pickedFile;
  ImagePicker imagePicker = ImagePicker();
  SignUpController signUpController = Get.find();
  SignUpProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
       Obx(() => CircleAvatar(
              radius: 60,
              backgroundImage:signUpController.isProfilePicPathSet.value == true ? FileImage(File(signUpController.profilePath.value)) as ImageProvider : const AssetImage('assets/images/profile.jpg'),
            )),
        Positioned(
          bottom: 0,
          child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) => bottomSheet(context));
              },
              child: Icon(
                Icons.camera,
                color: MyTheme.loginBoxTextColor,
              )),
        ),
      ],
    );
  }

  Widget bottomSheet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      width: double.infinity,
      height: size.height * 0.2,
      child: Column(
        children: [
          const Text(
            'Choose Profile Photo',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.image,
                      size: 40,
                      color: MyTheme.loginBoxTextColor,
                    ),
                    const Text(
                      'Gallery',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.gallery);
                },
              ),
              const SizedBox(
                width: 40,
              ),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera,
                      size: 40,
                      color: MyTheme.loginBoxTextColor,
                    ),
                    const Text(
                      'Camera',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                onTap: () {
                  takePhoto(ImageSource.camera);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> takePhoto(ImageSource source) async {
    final pickedImage =
        await imagePicker.pickImage(source: source, imageQuality: 100);
    pickedFile = File(pickedImage!.path);
    signUpController.setProfileImagePath(pickedFile!.path);
        Get.back();
  }
}
