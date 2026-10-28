import 'package:get/get_rx/src/rx_types/rx_types.dart' show IntExtension;
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;

  void setSelected(index) {
    selectedIndex.value = index.value;
  }
}
