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
          ListView.builder(
            padding: EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 2),
            shrinkWrap: true,
            itemCount: ussdModalList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 2,
                  horizontal: SizeUtils.horizontalBlockSize * 4,
                ),
                child: GestureDetector(
                  onTap: () {
                    String num = ussdModalList[index].number;
                    nevigation(num);
                    // navigation(num);
                    // Navigation.pushNamed(
                    //   Routes.iFSCSelectCity,
                    //   arg: {"cityDetails": state["city"]},
                    // );
                  },
                  child: ifscDetails(
                    ussdModalList[index].title,
                    isChange: true,
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
