import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'example_three_controller.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {
  ExampleThreeController exampleThreeController = Get.put(ExampleThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Text("notification"),
          Obx(() => Switch(value: exampleThreeController.notification.value, onChanged: (value){
            exampleThreeController.setNotification(value);

          })),

        ],
      ),
    );
  }
}
