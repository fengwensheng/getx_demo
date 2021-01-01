import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController {
  //data field
  int counter = 0;
  //method
  void decrease() {
    counter--;
    update();
  }

  void increase() {
    counter++;
    update();
  }

  ///end
}
