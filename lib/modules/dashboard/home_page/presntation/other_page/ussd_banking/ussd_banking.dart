import 'package:bank_balance/modules/dashboard/home_page/modal/ussd_modal.dart';
import 'package:bank_balance/modules/dashboard/home_page/widget/homepage_widget.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class USSDBanking extends StatelessWidget {
  const USSDBanking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerContainer(
              StringsUtils.ussd,
              iconChange: true,
            ),
            ListView.builder(
              padding: EdgeInsets.only(top: SizeUtils.horizontalBlockSize * 2),
              shrinkWrap: true,
              itemCount: ussdModalList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: SizeUtils.horizontalBlockSize * 2,
                    horizontal: SizeUtils.horizontalBlockSize * 4,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      String num = ussdModalList[index].number;
                      nevigation(num);
                      // navigation(num);
                      // Navigation.pushNamed(
                      //   Routes.iFSCSelectCity,
                      //   arg: {"cityDetails": state["city"]},
                      // );
                    },
                    child: ifscDetails(
                      ussdModalList[index].title,
                      isChange: true,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void nevigation(String num) {
    if (num == "0") {
      print("00000000000000000000000");
    } else if (num == "1") {
      print("1111111111111111111");
    } else {
      lunch(num);
    }
  }

  Future<void> lunch(String num) async {
    try {
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: num,
      );
      await launchUrl(launchUri);
    } catch (e) {
      print("rrorrrrrr---$e");
    }
  }
//   navigation(String num,) async {
//     switch (num) {
//       case 0:
//         return await FlutterPhoneDirectCaller.callNumber(num);
//         break;
//       case 1:
//         return await FlutterPhoneDirectCaller.callNumber(num);
//         break;
//       case 2:
//         return await FlutterPhoneDirectCaller.callNumber(num);
//         break;
//       case 3:
//         return await FlutterPhoneDirectCaller.callNumber(num);
//         break;
//       case 4:
//         return await FlutterPhoneDirectCaller.callNumber(num);
//         break;
//       case 5:
//         return await FlutterPhoneDirectCaller.callNumber(num);
//         break;
//     }
}
