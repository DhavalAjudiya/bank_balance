import 'package:bank_balance/modules/dashboard/home_page/modal/pricemodal.dart';
import 'package:bank_balance/modules/dashboard/saving_schemes/modal/savingmodal.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';

class SavingSchemes extends StatelessWidget {
  const SavingSchemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerContainer(
              StringsUtils.saving,
              iconChange: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeUtils.horizontalBlockSize * 2),
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: savingList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 45 / 50,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return gridContainer(
                      image: savingList[index].imageUrl,
                      text: savingList[index].price1,
                      text1: savingList[index].price2,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
