import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:temesgen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:temesgen_s_application5/widgets/custom_button.dart';

class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: appTheme.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(95.00),
                leadingWidth: 390,
                leading: AppbarImage(
                    height: getSize(50.00),
                    width: getSize(50.00),
                    svgPath: ImageConstant.imgArrowleftBlueGray100,
                    margin: getMargin(left: 20, right: 320, bottom: 45),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarTitle(
                    text: "lbl_reset_password".tr, margin: getMargin(top: 42))),
            body: Container(
                margin: getMargin(top: 9, right: 2, bottom: 1),
                padding: getPadding(left: 18, top: 24, right: 18, bottom: 24),
                decoration: AppDecoration.fillGray400
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 17),
                              child: Text("lbl_user_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium24))),
                      Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 12),
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00)),
                              border: Border.all(
                                  color: appTheme.gray500,
                                  width: getHorizontalSize(1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 17, top: 10),
                              child: Text("lbl_email".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium24))),
                      Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 18),
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00)),
                              border: Border.all(
                                  color: appTheme.gray500,
                                  width: getHorizontalSize(1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 17, top: 29),
                              child: Text("lbl_old_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium24))),
                      Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 26),
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00)),
                              border: Border.all(
                                  color: appTheme.gray500,
                                  width: getHorizontalSize(1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 17, top: 15),
                              child: Text("lbl_old_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium24))),
                      Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(335.00),
                          margin: getMargin(top: 18),
                          decoration: BoxDecoration(
                              color: appTheme.whiteA700,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00)),
                              border: Border.all(
                                  color: appTheme.gray500,
                                  width: getHorizontalSize(1.00)))),
                      CustomButton(
                          height: 70,
                          width: 335,
                          text: "lbl_reset".tr,
                          margin: getMargin(top: 33, bottom: 5),
                          onTap: onTapReset)
                    ]))));
  }

  onTapReset() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
