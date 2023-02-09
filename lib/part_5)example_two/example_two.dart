import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'example_two_controller.dart';
class ExampleTwo extends StatefulWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {
  ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.red.withOpacity(exampleTwoController.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (value) {
                exampleTwoController.setOpacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
