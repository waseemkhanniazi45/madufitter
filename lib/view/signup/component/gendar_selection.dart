import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/gendar_slection_controller.dart';
import '../../custom_widgets/my_theme.dart';

// ignore: must_be_immutable
class GendarSelection extends StatelessWidget {
GendarSelectionController gendarSelectionController = Get.find();

  GendarSelection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(child: Text('Gendar :')),
        Row(
          children: [
            Obx(() => Radio(
                  value: 'Male',
                  groupValue: gendarSelectionController.selectedGendar.value,
                  onChanged: (value) {
                    gendarSelectionController.onChangedGendar(value);
                  },
                  activeColor: MyTheme.textColor,
                  fillColor: MaterialStatePropertyAll(MyTheme.textColor),
                )),
            const Text('Male'),
            Obx(() => Radio(
                  value: 'Female',
                  groupValue: gendarSelectionController.selectedGendar.value,
                  onChanged: (value) {
                    gendarSelectionController.onChangedGendar(value);
                  },
                  activeColor: MyTheme.textColor,
                  fillColor: MaterialStatePropertyAll(MyTheme.textColor),
                )),
            const Text('Female'),
          ],
        )
      ],
    );
  }
}
