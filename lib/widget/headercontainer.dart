import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/utils/navigation_utils/navigation.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:flutter/material.dart';

Widget headerContainer(String text, {bool? iconChange = false}) {
  return Container(
    decoration: BoxDecoration(
      color: AppColors.headerContainer,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: EdgeInsets.only(
        top: SizeUtils.horizontalBlockSize * 15,
        right: SizeUtils.horizontalBlockSize * 3,
        left: SizeUtils.horizontalBlockSize * 3,
        bottom: SizeUtils.horizontalBlockSize * 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          iconChange == true
              ? GestureDetector(
                  onTap: () {
                    Navigation.pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: SizeUtils.horizontalBlockSize * 5,
                  ),
                )
              : const Icon(
                  Icons.menu,
                ),
          AppText(
            text,
            fontWeight: FontWeight.bold,
            fontSize: SizeUtils.fSize_18(),
          ),
          const Icon(
            Icons.menu,
          ),
        ],
      ),
    ),
  );
}

Widget gridContainer({
  String image = "",
  String text = "",
  String text1 = "",
}) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 5,
      vertical: 5,
    ),
    decoration: BoxDecoration(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: AppColors.black.withOpacity(0.2),
          blurRadius: 2,
          // spreadRadius: 2,
          offset: const Offset(1, 2),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: SizeUtils.horizontalBlockSize * 12,
          color: AppColors.dartBlue,
        ),
        AppText(
          text,
          fontSize: SizeUtils.fSize_16(),
          fontWeight: FontWeight.w300,
        ),
        AppText(
          text1,
          fontSize: SizeUtils.fSize_16(),
          fontWeight: FontWeight.w300,
        )
      ],
    ),
  );
}
