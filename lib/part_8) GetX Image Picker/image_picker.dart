import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/part_8)%20GetX%20Image%20Picker/image_picker_controller.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePickerController controller = Get.put(
    ImagePickerController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: controller.selectedImagePath.isNotEmpty
                      ? FileImage(
                          File(
                            controller.selectedImagePath.toString(),
                          ),
                        )
                      : null,
                ),
              ),
              TextButton(
                onPressed: () {
                  controller.getImage();
                },
                child: const Text("Pick Image"),
              ),
            ],
          );
        },
      ),
    );
  }
}
