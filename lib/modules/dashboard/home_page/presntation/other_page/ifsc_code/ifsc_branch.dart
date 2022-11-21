import 'package:bank_balance/modules/dashboard/home_page/controller/home_controller.dart';
import 'package:bank_balance/modules/dashboard/home_page/modal/ifscmodal.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/navigation_utils/navigation.dart';
import 'package:bank_balance/utils/navigation_utils/routes.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/custom_textfield.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IFSCSelectBranch extends StatelessWidget {
  IFSCSelectBranch({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();
  var branchData;
  @override
  Widget build(BuildContext context) {
    branchData = Get.arguments;
    return Scaffold(
      body: Column(
        children: [
          headerContainer(
            StringsUtils.selectBranch,
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
              enableColor: AppColors.dartBlue,
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 2),
            shrinkWrap: true,
            itemCount: branchData["branchDetails"].length,
            itemBuilder: (context, index) {
              final branch = branchData["branchDetails"][index];
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 1,
                  horizontal: SizeUtils.horizontalBlockSize * 4,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigation.pushNamed(
                      Routes.iFSCDetails,
                      arg: {"ifscDetails": branch["details"]},
                    );
                  },
                  child: bankDetails(
                    branch["placeName"],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
