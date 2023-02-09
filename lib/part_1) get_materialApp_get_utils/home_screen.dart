import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Getx Zindabad"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "title",
            "message",
            backgroundColor: Colors.blue,
            icon: const Icon(Icons.add),
            duration: const Duration(seconds: 10),
            snackPosition: SnackPosition.BOTTOM,
          );
        },
      ),
    );
  }
}
