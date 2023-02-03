import 'controller/frame_1_menu_modal_controller.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';

class Frame1MenuModalScreen extends GetWidget<Frame1MenuModalController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: appTheme.gray700,
            body: Container(
                padding: getPadding(top: 22, bottom: 22),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(56.00),
                              width: getHorizontalSize(63.00),
                              padding: getPadding(
                                  left: 14, top: 12, right: 14, bottom: 12),
                              decoration: AppDecoration.outlineBlack900,
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgClose,
                                    height: getVerticalSize(30.00),
                                    width: getHorizontalSize(34.00),
                                    alignment: Alignment.center)
                              ]))),
                      Spacer(),
                      Padding(
                          padding: getPadding(left: 78),
                          child: Text("lbl_logo".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular32WhiteA700)),
                      Padding(
                          padding: getPadding(left: 36, top: 101),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVolume,
                                height: getSize(40.00),
                                width: getSize(40.00),
                                onTap: () {
                                  onTapImgVolume();
                                }),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtHome();
                                },
                                child: Padding(
                                    padding: getPadding(left: 29, top: 1),
                                    child: Text("lbl_home".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtInterRegular32WhiteA700)))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 64),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUser,
                                        height: getSize(40.00),
                                        width: getSize(40.00),
                                        margin: getMargin(bottom: 7)),
                                    Padding(
                                        padding: getPadding(left: 24, top: 8),
                                        child: Text("lbl_profile".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular32WhiteA700))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 36, top: 52),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgVector,
                                height: getSize(40.00),
                                width: getSize(40.00)),
                            Padding(
                                padding: getPadding(left: 32, top: 1),
                                child: Text("lbl_about".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular32WhiteA700))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 46),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgTicket,
                                        height: getSize(40.00),
                                        width: getSize(40.00)),
                                    Padding(
                                        padding:
                                            getPadding(left: 24, bottom: 1),
                                        child: Text("lbl_setting".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterRegular32WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 68, bottom: 27),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getSize(40.00),
                                        width: getSize(40.00),
                                        margin: getMargin(top: 2),
                                        onTap: () {
                                          onTapImgArrowleft();
                                        }),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogout();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(left: 23, bottom: 3),
                                            child: Text("lbl_logout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular32WhiteA700)))
                                  ])))
                    ]))));
  }

  onTapImgVolume() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtHome() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapTxtLogout() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
