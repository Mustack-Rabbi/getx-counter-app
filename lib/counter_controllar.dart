import 'package:get/get.dart';

class CounterControllar extends GetxController {
  var counter = 0;

  void increament() {
    counter++;
    update();
  }
  void dricreament() {
    counter--;
    update();
  }
}
