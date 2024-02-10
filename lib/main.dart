import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kronos/feature/home/view/home_view.dart';
import 'package:kronos/product/init/application_initialize.dart';
import 'package:kronos/product/init/product_localization.dart';
import 'package:kronos/product/utility/constants/app/app_constants.dart';

Future <void> main() async {
  await ApplicationInitialize().make();
  runApp(ProductLocalization(child: const _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.COMPANY_NAME,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 21, 28, 31),
        ),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
