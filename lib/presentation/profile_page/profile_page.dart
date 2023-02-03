import 'controller/profile_controller.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_image.dart';
import 'package:temesgen_s_application5/widgets/app_bar/appbar_subtitle.dart';
import 'package:temesgen_s_application5/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  ProfileController controller = Get.put(ProfileController(ProfileModel().obs));

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
          leadingWidth: 51,
          leading: AppbarImage(
            height: getVerticalSize(
              25.00,
            ),
            width: getHorizontalSize(
              37.00,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 14,
              top: 9,
              bottom: 17,
            ),
          ),
          centerTitle: true,
          title: AppbarSubtitle(
            text: "lbl_profile".tr,
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
                left: 16,
                top: 11,
                right: 16,
                bottom: 11,
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
                left: 2,
                right: 2,
              ),
              padding: getPadding(
                left: 131,
                top: 215,
                right: 131,
                bottom: 215,
              ),
              decoration: AppDecoration.fillGray400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      bottom: 209,
                    ),
                    child: Text(
                      "lbl_profile2".tr,
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
