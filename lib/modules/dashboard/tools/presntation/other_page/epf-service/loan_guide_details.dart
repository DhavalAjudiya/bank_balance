import 'package:bank_balance/modules/dashboard/tools/presntation/other_page/APP.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoanGuidDetails extends StatelessWidget {
  LoanGuidDetails({Key? key}) : super(key: key);
  var id;

  @override
  Widget build(BuildContext context) {
    id = Get.arguments;
    print("id-------1--${id["id"]}");
    idMatch(id["id"]);
    return Scaffold(
      backgroundColor: Color(0xff21212d),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.horizontalBlockSize * 3.5,
            vertical: SizeUtils.horizontalBlockSize * 2,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeUtils.verticalBlockSize * 10,
                ),
                AppText(
                  id["id"] == 1
                      ? AppString.whatIs
                      : id["id"] == 2
                          ? AppString.forWhat
                          : id["id"] == 3
                              ? AppString.which
                              : id["id"] == 4
                                  ? AppString.how
                                  : id["id"] == 5
                                      ? AppString.from
                                      : id["id"] == 6
                                          ? AppString.hoeDo
                                          : id["id"] == 7
                                              ? AppString.whatAre
                                              : id["id"] == 8
                                                  ? AppString.key
                                                  : id["id"] == 9
                                                      ? AppString.difference
                                                      : id["id"] == 10
                                                          ? AppString.loan
                                                          : id["id"] == 11
                                                              ? AppString.credit
                                                              : AppString.howIS,
                  fontSize: SizeUtils.fSize_18(),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeUtils.horizontalBlockSize * 3,
                    bottom: SizeUtils.horizontalBlockSize * 5,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 2, horizontal: SizeUtils.horizontalBlockSize * 3),
                      child: AppText(
                        id["id"] == 1
                            ? AppString.whatIsLoan
                            : id["id"] == 2
                                ? AppString.forWhatPurposes
                                : id["id"] == 3
                                    ? AppString.whichEli
                                    : id["id"] == 4
                                        ? AppString.howMuch
                                        : id["id"] == 5
                                            ? AppString.forewich
                                            : id["id"] == 6
                                                ? AppString.howDoBanks
                                                : id["id"] == 7
                                                    ? AppString.whatAreThe
                                                    : id["id"] == 8
                                                        ? AppString.keyDocuments
                                                        : id["id"] == 9
                                                            ? AppString.differenceBet
                                                            : id["id"] == 10
                                                                ? AppString.loanApproval
                                                                : id["id"] == 11
                                                                    ? AppString.creditReport
                                                                    : AppString.howIsHaving,
                        fontSize: SizeUtils.fSize_12(),
                        maxLines: 80,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void idMatch(int id) {}
}
