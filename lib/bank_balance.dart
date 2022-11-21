import 'package:bank_balance/helper/net_conectivity.dart';
import 'package:bank_balance/utils/app_binding.dart';
import 'package:bank_balance/utils/my_behavior.dart';
import 'package:bank_balance/utils/navigation_utils/routes.dart';
import 'package:bank_balance/utils/size_utils.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class BankBalance extends StatelessWidget {
  const BankBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      theme: ThemeData(
        brightness: Brightness.light,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        disabledColor: Colors.transparent,
        // fontFamily: AssetsPath.robotoFonts,
      ),
      initialRoute: Routes.bottomBar,
      getPages: Routes.routes,
      builder: (context, child) {
        SizeUtils().init(context);
        return Scaffold(
          // backgroundColor: AppColors.white,
          resizeToAvoidBottomInset: false,
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ConnectivityWidget(
              builder: (_, __) => BotToastInit()(_, child),
            ),
          ),
        );
      },
    );
  }
}
