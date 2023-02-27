import 'package:get/get.dart';
import '../controllers/Screen1Controller.dart';

class Screen1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Screen1Controller());
  }
}