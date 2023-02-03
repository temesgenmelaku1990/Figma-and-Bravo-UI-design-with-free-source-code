import 'controller/home_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/presentation/about_page/about_page.dart';
import 'package:temesgen_s_application5/presentation/home_page/home_page.dart';
import 'package:temesgen_s_application5/presentation/profile_page/profile_page.dart';
import 'package:temesgen_s_application5/presentation/setting_page/setting_page.dart';
import 'package:temesgen_s_application5/widgets/custom_bottom_bar.dart';

class HomeContainerScreen extends GetWidget<HomeContainerController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: appTheme.green500,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Clock:
        return AppRoutes.homePage;
      case BottomBarEnum.User:
        return AppRoutes.profilePage;
      case BottomBarEnum.Vector:
        return AppRoutes.aboutPage;
      case BottomBarEnum.Ticket:
        return AppRoutes.settingPage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      case AppRoutes.aboutPage:
        return AboutPage();
      case AppRoutes.settingPage:
        return SettingPage();
      default:
        return DefaultWidget();
    }
  }
}
