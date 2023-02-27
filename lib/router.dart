import 'package:get/get.dart';
import './screen1.dart';
import 'bindings/Screen1Binding.dart';

class Routes {
  static String screen1 = '/screen1';
}

appRoutes() => [
      GetPage(
        name: Routes.screen1,
        page: () => const Screen1(),
        binding: Screen1Binding()
      )
    ];
