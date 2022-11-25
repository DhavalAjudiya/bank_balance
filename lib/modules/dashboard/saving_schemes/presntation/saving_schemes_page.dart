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
              padding: EdgeInsets.symmetric(horizontal: SizeUtils.horizontalBlockSize * 2),
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
                      onTap: () async {
                        urlLauncher(index: index);
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

  Future<void> _launchUrl(String url) async {
    final Uri urls = Uri.parse(url);
    if (!await launchUrl(urls)) {
      throw "Could not launch $urls";
    }
  }

  Future<void>? urlLauncher({int? index}) {
    switch (index) {
      case 0:
        return _launchUrl("https://groww.in/p/savings-schemes/public-provident-fund-ppf");
        break;
      case 1:
        return _launchUrl("https://groww.in/p/savings-schemes/employees-provident-fund-epf");
        break;
      case 2:
        return _launchUrl("https://financialservices.gov.in/pension-reforms-divisions/National-Pension-System");
        break;
      case 3:
        return _launchUrl("https://groww.in/p/savings-schemes/public-provident-fund-ppf");
        break;
      case 4:
        return _launchUrl("https://www.nsic.co.in/schemes/National-Scheduled-Caste-and-Scheduled-Tribe-Hub.aspx");
        break;
      case 5:
        return _launchUrl("https://indiapostgdsonline.gov.in/");
        break;
      case 6:
        return _launchUrl("https://vikaspedia.in/social-welfare/senior-citizens-welfare/pradhan-mantri-vaya-vandana-yojana");
        break;
      case 7:
        return _launchUrl("https://pmjdy.gov.in/");
        break;
    }
  }
}
