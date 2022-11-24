import 'package:bank_balance/modules/dashboard/home_page/controller/home_controller.dart';
import 'package:bank_balance/modules/dashboard/home_page/modal/pricemodal.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/app_colors.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/navigation_utils/navigation.dart';
import 'package:bank_balance/utils/navigation_utils/routes.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/app_text.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                // height: SizeUtils.verticalBlockSize * 35,
                decoration: BoxDecoration(
                  color: AppColors.headerContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeUtils.horizontalBlockSize * 15,
                    right: SizeUtils.horizontalBlockSize * 3,
                    left: SizeUtils.horizontalBlockSize * 3,
                    bottom: SizeUtils.horizontalBlockSize * 3,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.menu,
                          ),
                          AppText(
                            StringsUtils.allBanK,
                            fontWeight: FontWeight.bold,
                            fontSize: SizeUtils.fSize_18(),
                          ),
                          const Icon(
                            Icons.menu,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeUtils.horizontalBlockSize * 4),
                        child: SizedBox(
                          height: SizeUtils.verticalBlockSize * 20,
                          child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                            controller: homeController.pageController,
                            onPageChanged: (int index) {
                              homeController.currentPage.value = index;
                            },
                            itemCount: slideList.length,
                            itemBuilder: (ctx, index) => slideItem(
                                index: homeController.currentPage.value),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeUtils.horizontalBlockSize * 3),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < slideList.length; i++)
                              if (i == homeController.currentPage.value)
                                const SlideDots(true)
                              else
                                const SlideDots(false)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: SizeUtils.horizontalBlockSize * 3,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.horizontalBlockSize * 4),
                child: Column(
                  children: [
                    headerRow(
                      StringsUtils.banking,
                      AppColors.headerText,
                    ),
                    GridView.builder(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: gridItemList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 45 / 50,
                          mainAxisSpacing: 2,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigation(id: gridItemList[index].id);
                            },
                            child: gridContainer(
                              image: gridItemList[index].imageUrl,
                              text: gridItemList[index].price1,
                              text1: gridItemList[index].price2,
                            ),
                          );
                        }),
                    headerRow(
                      StringsUtils.mutual,
                      AppColors.headerText2,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: gridItemList1.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 45 / 50,
                          mainAxisSpacing: 2,
                        ),
                        itemBuilder: (context, index) {
                          return gridContainer(
                            image: gridItemList1[index].imageUrl,
                            text: gridItemList1[index].price1,
                            text1: gridItemList1[index].price2,
                          );
                        }),
                    headerRow(
                      StringsUtils.loan,
                      AppColors.headerText,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: gridItemList2.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 45 / 50,
                          mainAxisSpacing: 2,
                        ),
                        itemBuilder: (context, index) {
                          return gridContainer(
                            image: gridItemList2[index].imageUrl,
                            text: gridItemList2[index].price1,
                            text1: gridItemList2[index].price2,
                          );
                        }),
                    SizedBox(
                      height: SizeUtils.horizontalBlockSize * 10,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  headerRow(String text, Color color) {
    return Row(
      children: [
        Container(
          height: SizeUtils.verticalBlockSize * 2.5,
          width: SizeUtils.horizontalBlockSize * 1.5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        SizedBox(
          width: SizeUtils.horizontalBlockSize * 1,
        ),
        AppText(
          text,
          fontSize: SizeUtils.fSize_18(),
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }

  navigation({int? id}) {
    switch (id) {
      case 0:
        return Navigation.pushNamed(Routes.bankBalance);
        break;
      case 1:
        return Navigation.pushNamed(Routes.ifscPage);
        break;
      case 2:
        return Navigation.pushNamed(Routes.ifscPage);
        break;
      case 3:
        return Navigation.pushNamed(Routes.uSSDBanking);
        break;
      case 4:
        return Navigation.pushNamed(Routes.bankBalance);
        break;
      case 5:
        return Navigation.pushNamed(Routes.ifscPage);
        break;
    }
  }
}
