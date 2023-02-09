// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  var name1;
  // final String name;
  ScreenTwo({
    Key? key,
    this.name1,
  }) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ScreenTwo ${Get.arguments[0]}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: TextButton(
          //     onPressed: () {
          //       // Get.to(
          //       //   ScreenThree(),
          //       // );
          //     },
          //     child: const Text("Screen Two"),
          //   ),
          // )
          GestureDetector(
            onTap: () {
              Get.toNamed('/screenThree');
            },
            child: Text("go to next screen"),
          )
        ],
      ),
    );
  }
}
