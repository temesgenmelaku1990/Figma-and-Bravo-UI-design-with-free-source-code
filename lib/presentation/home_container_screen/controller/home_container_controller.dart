import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/presentation/home_container_screen/models/home_container_model.dart';
import 'package:temesgen_s_application5/widgets/custom_bottom_bar.dart';

class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.loginScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
