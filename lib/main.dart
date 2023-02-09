import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_course/part_3)%20navigation_routing/screen_one.dart';
import 'package:getx_course/part_3)%20navigation_routing/screen_three.dart';
import 'package:getx_course/part_3)%20navigation_routing/screen_two.dart';
import 'package:getx_course/part_4)%20counter_example/screens/counter_scrren.dart';
import 'package:getx_course/part_5)example_two/example_two.dart';
import 'package:getx_course/part_6)example_three/example_three.dart';
import 'package:getx_course/part_7)%20favourite/favourite_screen.dart';
import 'package:getx_course/part_8)%20GetX%20Image%20Picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ImagePickerScreen(),
      getPages: [
        GetPage(name: '/', page: () => const ScreenOne()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo()),
        GetPage(name: '/screenThree', page: () => const ScreenThree()),
        GetPage(name: '/counterScreen', page: () => const CounterScreen()),
        GetPage(name: '/exampleTwo', page: () => const ExampleTwo()),
        GetPage(name: '/exampleThree', page: () => const ExampleThree()),
        GetPage(name: '/exampleThree', page: () => const FavouriteScreen()),
      ],
    );
  }
}
