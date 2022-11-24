import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:bank_balance/widget/button.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';

class SetUpUSSD extends StatelessWidget {
  const SetUpUSSD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          headerContainer(
            StringsUtils.setUpUssd,
            iconChange: true,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeUtils.horizontalBlockSize * 3),
            child: AppText(
              StringsUtils.setLanguage,
              fontSize: SizeUtils.fSize_20(),
              fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.horizontalBlockSize * 8.5),
            child: AppText(
              StringsUtils.setLsubText,
              fontSize: SizeUtils.fSize_16(),
              color: AppColors.black.withOpacity(0.6),
              // fontWeight: FontWeight.w600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 4),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeUtils.horizontalBlockSize * 18),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.black),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeUtils.horizontalBlockSize * 4.5,
                  right: SizeUtils.horizontalBlockSize * 4.5,
                  top: SizeUtils.horizontalBlockSize * 4.5,
                  bottom: SizeUtils.horizontalBlockSize * 4.5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      StringsUtils.welcome,
                      fontSize: SizeUtils.fSize_12(),
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    AppText(
                      StringsUtils.enterBank,
                      fontSize: SizeUtils.fSize_12(),
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    AppText(
                      StringsUtils.a,
                      fontSize: SizeUtils.fSize_12(),
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    AppText(
                      StringsUtils.b,
                      fontSize: SizeUtils.fSize_12(),
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    AppText(
                      StringsUtils.c,
                      fontSize: SizeUtils.fSize_12(),
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    AppText(
                      StringsUtils.d,
                      fontSize: SizeUtils.fSize_12(),
                      color: AppColors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeUtils.horizontalBlockSize * 4),
                      child: AppText(
                        StringsUtils.hdf,
                        fontSize: SizeUtils.fSize_12(),
                        color: AppColors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                      indent: SizeUtils.horizontalBlockSize * 0.5,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeUtils.horizontalBlockSize * 4,
                        left: SizeUtils.horizontalBlockSize * 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppText(
                            StringsUtils.cancel,
                            fontSize: SizeUtils.fSize_12(),
                            color: Colors.blue,
                            // fontWeight: FontWeight.w600,
                          ),
                          SizedBox(
                            width: SizeUtils.horizontalBlockSize * 5,
                          ),
                          AppText(
                            StringsUtils.send,
                            fontSize: SizeUtils.fSize_12(),
                            color: Colors.blue,
                            // fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeUtils.horizontalBlockSize * 6,
                left: SizeUtils.horizontalBlockSize * 5,
                right: SizeUtils.horizontalBlockSize * 5),
            child: createButton(
              txtSize: true,
              text: StringsUtils.codeList,
              onTap: () {},
              radius: 5,
              vertical: SizeUtils.horizontalBlockSize * 5,
              buttonColor: AppColors.dartBlue,
              textColor: AppColors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: SizeUtils.horizontalBlockSize * 4,
                left: SizeUtils.horizontalBlockSize * 5,
                right: SizeUtils.horizontalBlockSize * 5),
            child: AppText(
              textAlign: TextAlign.center,
              StringsUtils.note,
              fontSize: SizeUtils.fSize_16(),
              color: AppColors.black,
              // fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          createButton(
            txtSize: true,
            text: StringsUtils.dial,
            onTap: () {},
            radius: 1,
            vertical: SizeUtils.horizontalBlockSize * 5,
            buttonColor: AppColors.dartBlue,
            textColor: AppColors.white,
          ),
        ],
      ),
    );
  }
}
