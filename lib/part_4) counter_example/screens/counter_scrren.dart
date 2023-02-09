import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../repository/counter_repository.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final CounterRepository counterRepository = Get.put(CounterRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Center(
              child: Text(
                counterRepository.counter.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterRepository.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
