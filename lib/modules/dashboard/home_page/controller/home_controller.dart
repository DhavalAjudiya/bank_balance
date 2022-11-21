import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  TextEditingController bankSearchController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  RxList bank = [].obs;
}
