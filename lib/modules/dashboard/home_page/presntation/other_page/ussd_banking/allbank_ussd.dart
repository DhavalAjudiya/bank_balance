import 'package:bank_balance/modules/dashboard/home_page/modal/ussd_modal.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';

class AllBankUssd extends StatelessWidget {
  const AllBankUssd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          headerContainer(
            StringsUtils.allUssd,
            iconChange: true,
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(
                top: SizeUtils.horizontalBlockSize * 2,
                bottom: SizeUtils.horizontalBlockSize * 8,
              ),
              shrinkWrap: true,
              itemCount: allBankUSSDList.length,
              itemBuilder: (context, index) {
                var data = allBankUSSDList[index];
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeUtils.horizontalBlockSize * 2,
                    horizontal: SizeUtils.horizontalBlockSize * 4,
                  ),
                  child: ussdDetails(
                      text1: data.title,
                      text2: data.number,
                      text: data.title1,
                      subText: data.title3,
                      subText1: data.title2,
                      subText2: data.title4),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
