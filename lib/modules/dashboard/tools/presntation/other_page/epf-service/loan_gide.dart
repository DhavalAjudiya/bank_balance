import 'package:bank_balance/modules/dashboard/tools/presntation/other_page/APP.dart';
import 'package:bank_balance/modules/dashboard/tools/presntation/other_page/widget/loantypeContaoner.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:flutter/material.dart';

class LoanGuidePage extends StatelessWidget {
  const LoanGuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.horizontalBlockSize * 3.5,
            vertical: SizeUtils.horizontalBlockSize * 2,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                loanTypeContainer(
                  id: 1,
                  text: AppString.whatIs,
                ),
                loanTypeContainer(
                  id: 2,
                  text: AppString.forWhat,
                ),
                loanTypeContainer(
                  id: 3,
                  text: AppString.which,
                ),
                loanTypeContainer(
                  id: 4,
                  text: AppString.how,
                ),
                loanTypeContainer(
                  id: 5,
                  text: AppString.hoeDo,
                ),
                loanTypeContainer(
                  id: 6,
                  text: AppString.whatAre,
                ),
                loanTypeContainer(
                  id: 7,
                  text: AppString.whatAre,
                ),
                loanTypeContainer(
                  id: 8,
                  text: AppString.key,
                ),
                loanTypeContainer(
                  id: 9,
                  text: AppString.difference,
                ),
                loanTypeContainer(
                  id: 10,
                  text: AppString.loan,
                ),
                loanTypeContainer(
                  id: 11,
                  text: AppString.credit,
                ),
                loanTypeContainer(
                  id: 12,
                  text: AppString.howIS,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
