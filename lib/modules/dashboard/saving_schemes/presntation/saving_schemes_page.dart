import 'package:bank_balance/modules/dashboard/saving_schemes/modal/savingmodal.dart';
import 'package:bank_balance/res/strings_utils.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bank_balance/widget/headercontainer.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SavingSchemes extends StatelessWidget {
  const SavingSchemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerContainer(
              StringsUtils.saving,
              iconChange: true,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeUtils.horizontalBlockSize * 2),
              child: GridView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: savingList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 45 / 50,
                    mainAxisSpacing: 2,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        _launchURL();

                        // nevigation(index: index);
                        // https://groww.in/p/savings-schemes/public-provident-fund-ppf
                      },
                      child: gridContainer(
                        image: savingList[index].imageUrl,
                        text: savingList[index].price1,
                        text1: savingList[index].price2,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> lunch(String num) async {
    try {
      final Uri launchUri = Uri(
        scheme: 'https',
        path: num,
      );
      await launchUrl(launchUri);
    } catch (e) {
      print("rrorrrrrr---$e");
    }
  }

  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
