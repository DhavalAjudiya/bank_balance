import 'package:bank_balance/modules/dashboard/home_page/presntation/home_page.dart';
import 'package:bank_balance/modules/dashboard/saving_schemes/presntation/saving_schemes_page.dart';
import 'package:bank_balance/modules/dashboard/tools/presntation/tools_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
}
