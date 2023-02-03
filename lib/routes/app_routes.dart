import 'package:temesgen_s_application5/presentation/home_container_screen/home_container_screen.dart';
import 'package:temesgen_s_application5/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:temesgen_s_application5/presentation/frame_1_menu_modal_screen/frame_1_menu_modal_screen.dart';
import 'package:temesgen_s_application5/presentation/frame_1_menu_modal_screen/binding/frame_1_menu_modal_binding.dart';
import 'package:temesgen_s_application5/presentation/login_screen/login_screen.dart';
import 'package:temesgen_s_application5/presentation/login_screen/binding/login_binding.dart';
import 'package:temesgen_s_application5/presentation/register_screen/register_screen.dart';
import 'package:temesgen_s_application5/presentation/register_screen/binding/register_binding.dart';
import 'package:temesgen_s_application5/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:temesgen_s_application5/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:temesgen_s_application5/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:temesgen_s_application5/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String frame1MenuModalScreen = '/frame_1_menu_modal_screen';

  static const String profilePage = '/profile_page';

  static const String aboutPage = '/about_page';

  static const String settingPage = '/setting_page';

  static const String loginScreen = '/login_screen';

  static const String registerScreen = '/register_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: frame1MenuModalScreen,
      page: () => Frame1MenuModalScreen(),
      bindings: [
        Frame1MenuModalBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    )
  ];
}
