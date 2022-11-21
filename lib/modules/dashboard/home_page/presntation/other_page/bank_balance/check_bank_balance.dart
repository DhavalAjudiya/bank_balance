import 'package:bank_balance/modules/dashboard/home_page/controller/home_controller.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/custom_textfield.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankBalancePage extends StatelessWidget {
  BankBalancePage({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          headerContainer(
            StringsUtils.selectYourBank,
            iconChange: true,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeUtils.horizontalBlockSize * 4,
              left: SizeUtils.horizontalBlockSize * 4,
              right: SizeUtils.horizontalBlockSize * 4,
            ),
            child: CustomTextField(
              controller: homeController.searchController,
              onChanged: (val) {},
              enableColor: AppColors.dartBlue,
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 2),
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              // final state = stateData["stateDetails"][index];
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 1,
                  horizontal: SizeUtils.horizontalBlockSize * 4,
                ),
                child: GestureDetector(
                  onTap: () {
                    // Navigation.pushNamed(
                    //   Routes.iFSCSelectCity,
                    //   arg: {"cityDetails": state["city"]},
                    // );
                  },
                  child: bankDetails(
                      // state["st"]",
                      "123456"),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
