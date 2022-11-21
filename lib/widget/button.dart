import 'package:bank_balance/res/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/size_utils.dart';

Widget createButton({
  required String? text,
  required VoidCallback onTap,
  Color? buttonColor,
  Color? textColor,
  double? radius,
  double? vertical,
}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding:
          EdgeInsets.symmetric(vertical: SizeUtils.horizontalBlockSize * 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: buttonColor ?? AppColors.white,
          borderRadius: BorderRadius.circular(radius ?? 12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: vertical ?? SizeUtils.verticalBlockSize * 1.4,
          ),
          child: Text(
            "$text",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              // fontFamily: AssetsPath.roboto,
              fontSize: SizeUtils.fSize_20(),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ),
  );
}
