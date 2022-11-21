import 'package:bank_balance/modules/dashboard/home_page/modal/pricemodal.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/assets_path.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;

  const SlideDots(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin:
          EdgeInsets.symmetric(horizontal: SizeUtils.horizontalBlockSize * 1),
      height: isActive
          ? SizeUtils.horizontalBlockSize * 1.5
          : SizeUtils.horizontalBlockSize * 1.5,
      width: isActive
          ? SizeUtils.horizontalBlockSize * 4.5
          : SizeUtils.horizontalBlockSize * 1.5,
      decoration: BoxDecoration(
        color: isActive ? AppColors.darkBlue : AppColors.textColor,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class SlideDotsItems extends StatelessWidget {
  final bool isActive;

  const SlideDotsItems(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin:
          EdgeInsets.symmetric(horizontal: SizeUtils.horizontalBlockSize * 1.8),
      height: isActive
          ? SizeUtils.horizontalBlockSize * 2.4
          : SizeUtils.horizontalBlockSize * 2.4,
      width: isActive
          ? SizeUtils.horizontalBlockSize * 4
          : SizeUtils.horizontalBlockSize * 2.4,
      decoration: BoxDecoration(
        color: isActive ? AppColors.darkBlue : Colors.transparent,
        border: isActive
            ? Border.all(width: 2, color: AppColors.darkBlue)
            : Border.all(width: 1.4, color: AppColors.darkBlue),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

Widget slideItem({required int index}) {
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: SizeUtils.horizontalBlockSize * 1,
    ),
    decoration: BoxDecoration(
      color: slideList[index].color,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeUtils.horizontalBlockSize * 2,
          horizontal: SizeUtils.horizontalBlockSize * 3),
      child: Column(
        children: [
          AppText(
            slideList[index].imageUrl,
            fontSize: SizeUtils.fSize_18(),
            color: AppColors.white,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeUtils.horizontalBlockSize * 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetsPath.ruppe,
                          width: SizeUtils.horizontalBlockSize * 9,
                          color: AppColors.headerText,
                        ),
                        AppText(
                          slideList[index].price1,
                          fontSize: SizeUtils.fSize_25(),
                          color: AppColors.headerText,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeUtils.horizontalBlockSize * 2,
                    ),
                    AppText(
                      slideList[index].title1,
                      fontSize: SizeUtils.fSize_20(),
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Container(
                  height: SizeUtils.verticalBlockSize * 8,
                  width: SizeUtils.horizontalBlockSize * 0.3,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          AssetsPath.ruppe,
                          width: SizeUtils.horizontalBlockSize * 9,
                          color: AppColors.headerText2,
                        ),
                        AppText(
                          slideList[index].price2,
                          fontSize: SizeUtils.fSize_25(),
                          color: AppColors.headerText2,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeUtils.horizontalBlockSize * 2,
                    ),
                    AppText(
                      slideList[index].title2,
                      fontSize: SizeUtils.fSize_20(),
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppText(
                slideList[index].title3,
                fontSize: SizeUtils.fSize_16(),
                color: AppColors.white,
                fontWeight: FontWeight.w400,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: AppColors.white,
                size: SizeUtils.horizontalBlockSize * 5,
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

// Widget customAppLogo({double? vertical, double? height}) {
//   return Padding(
//     padding: EdgeInsets.only(top: vertical ?? SizeUtils.horizontalBlockSize * 19, bottom: SizeUtils.horizontalBlockSize * 10),
//     child: Image.asset(
//       AssetsPath.appLogo,
//       height: height ?? SizeUtils.horizontalBlockSize * 23,
//       width: double.infinity,
//       // color: AppColors.backGroundColor,
//     ),
//   );
// }