import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';

class BankHoliday extends StatelessWidget {
  const BankHoliday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerContainer(
              "",
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
                      "2222",
                      isChange: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.miniStatement),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(
                      "123",
                      isChange: true,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeUtils.horizontalBlockSize * 2.2),
                    child: headerText(StringsUtils.care),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: SizeUtils.horizontalBlockSize * 2.2),
                    child: ifscDetails(
                      "123",
                      isChange: true,
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
