import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.red400,
        border: Border.all(
          color: appTheme.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillGreen500 => BoxDecoration(
        color: appTheme.green500,
      );
  static BoxDecoration get fillGray700 => BoxDecoration(
        color: appTheme.gray700,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );
}
