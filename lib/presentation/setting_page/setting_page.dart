import 'controller/setting_controller.dart';
import 'models/setting_model.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:temesgen_s_application5/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class SettingPage extends StatelessWidget {
  SettingController controller = Get.put(SettingController(SettingModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: appTheme.green500,
        appBar: CustomAppBar(
          height: getVerticalSize(
            51.00,
          ),
          leadingWidth: 49,
          leading: AppbarImage(
            height: getVerticalSize(
              25.00,
            ),
            width: getHorizontalSize(
              37.00,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 12,
              top: 13,
              bottom: 13,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_setting".tr,
            margin: getMargin(
              left: 68,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                29.00,
              ),
              width: getSize(
                29.00,
              ),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 13,
                top: 10,
                right: 13,
                bottom: 12,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700_1,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              padding: getPadding(
                left: 113,
                top: 178,
                right: 113,
                bottom: 178,
              ),
              decoration: AppDecoration.fillGray400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 283,
                    ),
                    child: Text(
                      "lbl_setting2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterRegular32,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
