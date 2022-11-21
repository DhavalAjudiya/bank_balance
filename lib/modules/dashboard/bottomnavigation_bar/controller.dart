import 'package:bank_balance/modules/dashboard/home_page/presntation/home_page.dart';
import 'package:bank_balance/modules/dashboard/saving_schemes/presntation/saving_schemes_page.dart';
import 'package:bank_balance/modules/dashboard/tools/presntation/tools_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarController extends GetxController {
  RxInt currentIndex = 1.obs;
  GlobalKey<CurvedNavigationBarState> bottomNavigationKey = GlobalKey();

  final page = [
    const SavingSchemes(),
    HomePage(),
    const ToolsPage(),
  ];
}
