import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:temesgen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:temesgen_s_application5/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: appTheme.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(1.00),
                leadingWidth: 51,
                leading: AppbarImage(
                    height: getVerticalSize(1.00),
                    width: getHorizontalSize(37.00),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 14)),
                title: AppbarSubtitle(
                    text: "lbl_home".tr, margin: getMargin(left: 88)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(1.00),
                      width: getHorizontalSize(29.00),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 18, right: 18))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(679.00),
                        width: size.width,
                        margin: getMargin(bottom: 1),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  width: size.width,
                                  decoration: AppDecoration.fillGreen500,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: appTheme.green500)),
                                        Container(
                                            width: size.width,
                                            margin: getMargin(top: 51),
                                            padding:
                                                getPadding(left: 14, right: 14),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath:
                                                          ImageConstant.imgMenu,
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          37.00),
                                                      margin: getMargin(
                                                          bottom: 13)),
                                                  Spacer(flex: 43),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 8),
                                                      child: Text("lbl_home".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular32)),
                                                  Spacer(flex: 56),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height:
                                                          getVerticalSize(1.00),
                                                      width: getHorizontalSize(
                                                          29.00),
                                                      margin: getMargin(
                                                          right: 3, bottom: 8))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: size.width,
                                  padding: getPadding(
                                      left: 20, top: 73, right: 20, bottom: 73),
                                  decoration: AppDecoration.fillGray400,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgWomenpowerhome,
                                            height: getVerticalSize(353.00),
                                            width: getHorizontalSize(350.00)),
                                        CustomButton(
                                            height: 90,
                                            width: 334,
                                            text: "lbl_get_started".tr,
                                            margin:
                                                getMargin(top: 43, bottom: 44),
                                            padding: ButtonPadding.PaddingAll25,
                                            onTap: onTapGetstarted)
                                      ])))
                        ]))))));
  }

  onTapGetstarted() {
    Get.toNamed(AppRoutes.registerScreen);
  }
}
