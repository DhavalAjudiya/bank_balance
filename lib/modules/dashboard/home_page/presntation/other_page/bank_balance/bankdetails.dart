import 'package:bank_balance/modules/dashboard/home_page/controller/home_controller.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:bank_balance/widget/button.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BankDetails extends StatelessWidget {
  BankDetails({Key? key}) : super(key: key);
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
              details["bankName"],
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
                    child: AppText(
                      StringsUtils.balanceInquiryHeader,
                      fontSize: SizeUtils.fSize_15(),
                      fontWeight: FontWeight.w400,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: SizeUtils.horizontalBlockSize * 2.2,
                    ),
                    child: headerText(StringsUtils.bankBalance),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeUtils.horizontalBlockSize * 2.2,
                    ),
                    child: ifscDetails(
                      details["details"][0],
                      isChange: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.miniStatement),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(
                      details["details"][1],
                      isChange: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.care),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(
                      details["details"][2],
                      isChange: true,
                    ),
                  ),
                  createButton(
                    text: StringsUtils.internetBanking,
                    textColor: Colors.white,
                    onTap: () {},
                    buttonColor: AppColors.dartBlue,
                    radius: 10,
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
