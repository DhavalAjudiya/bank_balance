import 'package:bank_balance/modules/dashboard/bottomnavigation_bar/controller.dart';
import 'package:bank_balance/modules/dashboard/home_page/controller/home_controller.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/assets_path.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomBarPage extends StatelessWidget {
  BottomBarPage({Key? key}) : super(key: key);
  final BottomBarController homeController = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: homeController.page[homeController.currentIndex.value],
        bottomNavigationBar: CurvedNavigationBar(
          key: homeController.bottomNavigationKey,
          index: 1,
          height: 50.0,
          items: <Widget>[
            itemImage(
              index: 0,
              path: AssetsPath.pigiBank,
              width: homeController.currentIndex.value == 0
                  ? SizeUtils.horizontalBlockSize * 50
                  : SizeUtils.horizontalBlockSize * 15,
            ),
            itemImage(
              index: 1,
              path: AssetsPath.home,
              width: homeController.currentIndex.value == 1
                  ? SizeUtils.horizontalBlockSize * 10
                  : SizeUtils.horizontalBlockSize * 8,
            ),
            itemImage(
              index: 2,
              path: AssetsPath.cal,
              width: homeController.currentIndex.value == 2
                  ? SizeUtils.horizontalBlockSize * 11
                  : SizeUtils.horizontalBlockSize * 8,
            ),
          ],
          color: AppColors.navigationBar,
          buttonBackgroundColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          animationCurve: Curves.ease,
          animationDuration: const Duration(milliseconds: 600),
          onTap: (index) {
            homeController.currentIndex.value = index;
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }

  itemImage({
    String path = "",
    int? index,
    double? width,
  }) {
    return Obx(
      () => CircleAvatar(
        radius: SizeUtils.horizontalBlockSize * 8,
        backgroundColor: homeController.currentIndex.value == index
            ? AppColors.navigationBar
            : Colors.transparent,
        child: CircleAvatar(
          radius: SizeUtils.horizontalBlockSize * 7,
          backgroundColor: homeController.currentIndex.value == index
              ? AppColors.dartBlue
              : Colors.transparent,
          child: Image.asset(
            path,
            color: homeController.currentIndex.value == index
                ? AppColors.white
                : AppColors.navigationIcon,
            width: width,
          ),
        ),
      ),
    );
  }
}
