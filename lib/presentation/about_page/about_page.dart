import 'controller/about_controller.dart';
import 'models/about_model.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:temesgen_s_application5/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AboutPage extends StatelessWidget {
  AboutController controller = Get.put(AboutController(AboutModel().obs));

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
          leadingWidth: 52,
          leading: AppbarImage(
            height: getVerticalSize(
              25.00,
            ),
            width: getHorizontalSize(
              37.00,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 15,
              top: 13,
              bottom: 13,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_about".tr,
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
                left: 11,
                top: 13,
                right: 11,
                bottom: 9,
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA700_1,
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: getMargin(
                left: 1,
              ),
              padding: getPadding(
                left: 150,
                top: 199,
                right: 150,
                bottom: 199,
              ),
              decoration: AppDecoration.fillGray400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 242,
                    ),
                    child: Text(
                      "lbl_about2".tr,
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
