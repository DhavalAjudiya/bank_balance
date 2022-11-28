import 'package:bank_balance/modules/dashboard/bottomnavigation_bar/bottomnavigation_bar.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/bank_balance/bankdetails.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/bank_balance/check_bank_balance.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ifsc_code/ifsc_branch.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ifsc_code/ifsc_city.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ifsc_code/ifsc_details.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ifsc_code/ifsc_page.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ifsc_code/ifsc_state.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ussd_banking/allbank_ussd.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ussd_banking/setup_ussd.dart';
import 'package:bank_balance/modules/dashboard/home_page/presntation/other_page/ussd_banking/ussd_banking.dart';
import 'package:bank_balance/modules/dashboard/tools/presntation/other_page/loan_gide.dart';
import 'package:bank_balance/modules/dashboard/tools/presntation/other_page/loan_guide_details.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  // static const String splash = "/splash";
  static const String bottomBar = "/bottomBar";
  static const String ifscPage = "/ifscPage";
  static const String iFSCSelectState = "/iFSCSelectState";
  static const String iFSCSelectCity = "/iFSCSelectCity";
  static const String iFSCSelectBranch = "/iFSCSelectBranch";
  static const String iFSCDetails = "/iFSCDetails";
  static const String bankBalance = "/bankBalance";
  static const String bankDetails = "/bankDetails";
  static const String uSSDBanking = "/uSSDBanking";
  static const String allBankUssd = "/allBankUssd";
  static const String setUpUSSD = "/setUpUSSD";
  static const String loanGuidePage = "/loanGuidePage";
  static const String loanGuidDetails = "/loanGuidDetails";

  static List<GetPage<dynamic>> routes = [
    // GetPage<dynamic>(
    //   name: splash,
    //   page: () => const SplashPage(),
    //   transition: defaultTransition,
    // ),
    GetPage<dynamic>(
      name: bottomBar,
      page: () => BottomBarPage(),
      transition: defaultTransition,
    ),
    GetPage(
      name: ifscPage,
      page: () => IFSCPage(),
      transition: defaultTransition,
    ),
    GetPage(
      name: iFSCSelectState,
      page: () => IFSCSelectState(),
      transition: defaultTransition,
    ),
    GetPage(
      name: iFSCSelectCity,
      page: () => IFSCSelectCity(),
      transition: defaultTransition,
    ),
    GetPage(
      name: iFSCSelectBranch,
      page: () => IFSCSelectBranch(),
      transition: defaultTransition,
    ),
    GetPage(
      name: iFSCDetails,
      page: () => IFSCDetails(),
      transition: defaultTransition,
    ),
    GetPage(
      name: bankBalance,
      page: () => BankBalancePage(),
      transition: defaultTransition,
    ),
    GetPage(
      name: bankDetails,
      page: () => BankDetails(),
      transition: defaultTransition,
    ),
    GetPage(
      name: uSSDBanking,
      page: () => USSDBanking(),
      transition: defaultTransition,
    ),
    GetPage(
      name: allBankUssd,
      page: () => AllBankUssd(),
      transition: defaultTransition,
    ),
    GetPage(
      name: setUpUSSD,
      page: () => SetUpUSSD(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loanGuidePage,
      page: () => LoanGuidePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loanGuidDetails,
      page: () => LoanGuidDetails(),
      transition: defaultTransition,
    ),
  ];
}
