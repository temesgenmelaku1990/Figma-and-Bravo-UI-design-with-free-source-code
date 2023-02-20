import 'package:flutter/material.dart';
import 'package:temesgen_s_application5/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgClock,
      type: BottomBarEnum.Clock,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      type: BottomBarEnum.User,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVector,
      type: BottomBarEnum.Vector,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgTicket,
      type: BottomBarEnum.Ticket,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: appTheme.whiteA700,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  40.00,
                ),
                width: getSize(
                  40.00,
                ),
                color: appTheme.black900,
              ),
              activeIcon: CustomImageView(
                svgPath: bottomMenuList[index].icon,
                height: getSize(
                  40.00,
                ),
                width: getSize(
                  40.00,
                ),
                color: appTheme.green50001,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged!(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Clock,
  User,
  Vector,
  Ticket,
}

class BottomMenuModel {
  BottomMenuModel({required this.icon, required this.type});

  String icon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
