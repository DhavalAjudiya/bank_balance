import 'package:bank_balance/utils/navigation_utils/navigation.dart';
import 'package:bank_balance/utils/navigation_utils/routes.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:flutter/material.dart';

loanTypeContainer({
  String text = "",
  int? id,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: SizeUtils.horizontalBlockSize * 2),
    child: GestureDetector(
      onTap: () {
        Navigation.pushNamed(Routes.loanGuidDetails, arg: {"id": id});
        print("id----------$id");
      },
      child: Container(
        height: SizeUtils.verticalBlockSize * 9,
        decoration: BoxDecoration(
          color: const Color(0xff21212d),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.horizontalBlockSize * 4,
          ),
          child: Row(
            children: [
              SizedBox(
                width: SizeUtils.horizontalBlockSize * 75,
                child: AppText(
                  text,
                  color: Colors.white,
                  fontSize: SizeUtils.fSize_16(),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                ),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
