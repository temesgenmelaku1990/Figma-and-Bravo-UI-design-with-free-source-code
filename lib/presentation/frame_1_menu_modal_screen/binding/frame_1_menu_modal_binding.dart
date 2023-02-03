import '../controller/frame_1_menu_modal_controller.dart';
import 'package:get/get.dart';

class Frame1MenuModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame1MenuModalController());
  }
}
