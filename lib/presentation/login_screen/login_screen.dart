import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/custom_button.dart';

class LoginScreen extends GetWidget<LoginController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: appTheme.green500,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftBlueGray100,
                          height: getSize(50.00),
                          width: getSize(50.00),
                          margin: getMargin(left: 1, top: 13),
                          onTap: () {
                            onTapImgArrowleft();
                          }),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 59, right: 126),
                              child: Text("lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMonoRegular40))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 24),
                          padding: getPadding(
                              left: 15, top: 37, right: 15, bottom: 37),
                          decoration: AppDecoration.fillGray400.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 18),
                                    child: Text("lbl_user_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratMedium24)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(60.00),
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(top: 12),
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            border: Border.all(
                                                color: appTheme.gray70001,
                                                width:
                                                    getHorizontalSize(1.00))))),
                                Padding(
                                    padding: getPadding(left: 18, top: 25),
                                    child: Text("lbl_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratMedium24)),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(60.00),
                                        width: getHorizontalSize(335.00),
                                        margin: getMargin(top: 32),
                                        decoration: BoxDecoration(
                                            color: appTheme.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(10.00)),
                                            border: Border.all(
                                                color: appTheme.gray500,
                                                width:
                                                    getHorizontalSize(1.00))))),
                                Padding(
                                    padding: getPadding(left: 18, top: 27),
                                    child: Text("lbl_forgot_password".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtMontserratRomanBold24)),
                                CustomButton(
                                    height: 70,
                                    width: 335,
                                    text: "lbl_login".tr,
                                    margin: getMargin(top: 47),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding:
                                            getPadding(top: 31, bottom: 37),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text(
                                                      "msg_dont_have_an_account"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13, top: 1),
                                                  child: Text("lbl_register".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratRomanBold20))
                                            ])))
                              ]))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
