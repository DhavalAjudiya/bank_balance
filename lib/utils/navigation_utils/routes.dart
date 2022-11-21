import 'package:bank_balance/modules/dashboard/bottomnavigation_bar/bottomnavigation_bar.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  // static const String splash = "/splash";
  static const String bottomBar = "/bottomBar";

  static List<GetPage<dynamic>> routes = [
    // GetPage<dynamic>(
    //   name: splash,
    //   page: () => const SplashPage(),
    //   transition: defaultTransition,
    // ),
    GetPage<dynamic>(
      name: bottomBar,
      page: () => BottomBarPage(),
      transition: defaultTransition,
    ),
  ];
}
