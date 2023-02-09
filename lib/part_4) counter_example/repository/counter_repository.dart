import 'package:get/get.dart';

class CounterRepository extends GetxController{
  RxInt counter = 1.obs;
  incrementCounter(){
    counter.value++;
  }
}