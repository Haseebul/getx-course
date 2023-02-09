import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:getx_course/part_3)%20navigation_routing/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ScreenOne"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: TextButton(
          //     onPressed: () {
          //       Get.to(
          //         ScreenTwo(
          //             //    name: 'haseeb',
          //             ),
          //       );
          //     },
          //     child: const Text("Screen One"),
          //   ),
          // )
          GestureDetector(
            onTap: () {
              Get.toNamed(
                '/screenTwo',
                arguments: [
                  'haseeb',
                  'ullah',
                ],
              );
            },
            child: Text("go to next screen"),
          )
        ],
      ),
    );
  }
}
