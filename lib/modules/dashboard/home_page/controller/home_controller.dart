import 'package:bank_balance/modules/dashboard/home_page/modal/blance_inquiry_modal.dart';
import 'package:bank_balance/res/appconfig.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentPage = 0.obs;
  final PageController pageController = PageController(initialPage: 0);
  TextEditingController bankSearchController = TextEditingController();
  TextEditingController searchController = TextEditingController();
  RxList bank = [].obs;
  Rx<BalanceInquiry> balanceInquiry = BalanceInquiry().obs;
  RxList<BalanceInquiry> balanceInquiryList = <BalanceInquiry>[].obs;

  @override
  void onInit() {
    super.onInit();
    getOnBoardingDetail();
  }

  Future<void> getOnBoardingDetail() async {
    await AppConfig.databaseReference
        .collection("balanceinquiry")
        .get()
        .then((QuerySnapshot<Map<String, dynamic>> value) {
      value.docs.forEach((element) {
        balanceInquiry.value = BalanceInquiry.fromJson(element.data());
        balanceInquiryList.add(balanceInquiry.value);
      });
    });
  }
}
