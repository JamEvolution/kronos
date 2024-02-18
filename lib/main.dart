import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kronos/product/init/application_initialize.dart';
import 'package:kronos/product/init/product_localization.dart';
import 'package:kronos/product/init/theme/custom_dark_theme.dart';
import 'package:kronos/product/init/theme/custom_light_theme.dart';
import 'package:kronos/product/navigation/app_router.dart';
import 'package:kronos/product/utility/constants/app/app_constants.dart';
import 'package:uiwidget/uiwidget.dart';

Future<void> main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const _MyApp()));
}

final class _MyApp extends StatelessWidget {
  const _MyApp();
  static final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: CustomResponsive.build,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.COMPANY_NAME,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      routerConfig: _appRouter.config(),
    );
  }
}
