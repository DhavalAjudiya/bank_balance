import 'package:bank_balance/modules/dashboard/home_page/controller/home_controller.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IFSCDetails extends StatelessWidget {
  IFSCDetails({Key? key}) : super(key: key);
  final HomeController homeController = Get.find();
  var details;

  @override
  Widget build(BuildContext context) {
    details = Get.arguments;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerContainer(
              details["ifscDetails"][4].toString().toUpperCase(),
              iconChange: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.horizontalBlockSize * 4,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 2.2,
                    ),
                    child: headerText(StringsUtils.bankName),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeUtils.horizontalBlockSize * 2.2,
                    ),
                    child: ifscDetails(details["ifscDetails"][0]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.ifsc),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(details["ifscDetails"][1]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.address),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(details["ifscDetails"][2]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.district),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(details["ifscDetails"][3]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.branch),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(details["ifscDetails"][4]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.branchCode),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(details["ifscDetails"][5]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.micrCode),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(details["ifscDetails"][6]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.district),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(3),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withOpacity(0.2),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: SizeUtils.horizontalBlockSize * 2,
                          horizontal: SizeUtils.horizontalBlockSize * 4,
                        ),
                        child: AppText(
                          details["ifscDetails"][7].toUpperCase(),
                          fontSize: SizeUtils.fSize_14(),
                          fontWeight: FontWeight.w300,
                          maxLines: 15,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
