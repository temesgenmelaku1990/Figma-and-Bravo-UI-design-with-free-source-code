import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions});

  double height;

  Style? styleType;

  double? leadingWidth;

  Widget? leading;

  Widget? title;

  bool? centerTitle;

  List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFillWhiteA700_1:
        return Container(
          height: getVerticalSize(
            51.00,
          ),
          width: getHorizontalSize(
            392.00,
          ),
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
          ),
        );
      case Style.bgFillWhiteA700:
        return Stack(
          children: [
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: appTheme.green500,
              ),
            ),
          ],
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFillWhiteA700_1,
  bgFillWhiteA700,
}
