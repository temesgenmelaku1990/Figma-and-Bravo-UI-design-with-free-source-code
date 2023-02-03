import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_title.dart';
import 'package:temesgen_s_application5/widgets/app_bar/custom_app_bar.dart';
import 'package:temesgen_s_application5/widgets/custom_button.dart';

class RegisterScreen extends GetWidget<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: appTheme.green500,
            appBar: CustomAppBar(
                height: getVerticalSize(82.00),
                leadingWidth: 59,
                leading: AppbarImage(
                    height: getSize(50.00),
                    width: getSize(50.00),
                    svgPath: ImageConstant.imgArrowleftBlueGray100,
                    margin: getMargin(left: 9, bottom: 32),
                    onTap: onTapArrowleft),
                centerTitle: true,
                title: AppbarTitle(
                    text: "lbl_register".tr, margin: getMargin(top: 29))),
            body: Container(
                width: size.width,
                margin: getMargin(top: 20),
                padding: getPadding(left: 18, top: 24, right: 18, bottom: 24),
                decoration: AppDecoration.fillGray400
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 19),
                          child: Text("lbl_user_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium24)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(335.00),
                              margin: getMargin(top: 17),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10.00)),
                                  border: Border.all(
                                      color: appTheme.gray500,
                                      width: getHorizontalSize(1.00))))),
                      Padding(
                          padding: getPadding(left: 19, top: 21),
                          child: Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium24)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(335.00),
                              margin: getMargin(top: 34),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10.00)),
                                  border: Border.all(
                                      color: appTheme.gray500,
                                      width: getHorizontalSize(1.00))))),
                      Padding(
                          padding: getPadding(left: 16, top: 30),
                          child: Text("lbl_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium24)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(60.00),
                              width: getHorizontalSize(335.00),
                              margin: getMargin(top: 25),
                              decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10.00)),
                                  border: Border.all(
                                      color: appTheme.gray500,
                                      width: getHorizontalSize(1.00))))),
                      CustomButton(
                          height: 70,
                          width: 335,
                          text: "lbl_register".tr,
                          margin: getMargin(top: 61),
                          onTap: onTapRegisterOne,
                          alignment: Alignment.center),
                      Padding(
                          padding: getPadding(
                              left: 9, top: 28, right: 38, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2, bottom: 2),
                                    child: Text("msg_already_registerd".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratMedium20)),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtLogin();
                                    },
                                    child: Text("lbl_login".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratRomanBold24))
                              ]))
                    ]))));
  }

  onTapRegisterOne() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapTxtLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
