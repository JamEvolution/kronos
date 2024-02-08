import 'package:flutter/material.dart';
import 'package:kronos/feature/home/view/home_view.dart';
import 'package:kronos/product/utility/constants/app/app_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ApplicationConstants.COMPANY_NAME,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 21, 28, 31)),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
