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

class IFSCPage extends StatelessWidget {
  IFSCPage({Key? key}) : super(key: key);
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
                controller: homeController.bankSearchController,
                enableColor: AppColors.dartBlue,
                focusedColor: AppColors.dartBlue,
                onChanged: (val) {
                  val = homeController.bankSearchController.text;
                  // homeController.bankSearchController.value = ifscList.where((e) {
                  //   return (e.bankName).contains(homeController.bankSearchController.text);
                  // }) as TextEditingValue;
                  for (var i = 0; i < ifscList.length; i++) {
                    if (ifscList[i].bankName.toLowerCase().trim().contains(val.toLowerCase())) {
                      homeController.bank.add(ifscList[i]);
                      print("homeController.bank-----${homeController.bank[i].toString()}");
                    }
                  }
                }
                // homeController.bank.add(val);
                // print("homeController.bank----ifscList-${ifscList}");
                ),
          ),
          ListView.builder(
            padding: EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 2),
            shrinkWrap: true,
            itemCount: ifscList.length,
            itemBuilder: (context, index) {
              final stateData = ifscList[index].bankDetails["state"];
              print("homeController.bank------lanth-${homeController.bank}");
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 1,
                  horizontal: SizeUtils.horizontalBlockSize * 4,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigation.pushNamed(
                      Routes.iFSCSelectState,
                      arg: {"stateDetails": stateData},
                    );
                  },
                  child: bankDetails(
                    ifscList[index].bankName,
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
