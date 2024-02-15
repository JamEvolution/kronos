import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';
import '_widget/layout_template_widget.dart';

@RoutePage()
final class AboutFrontView extends StatelessWidget {
  const AboutFrontView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minScreenWidth = 400;
    return Scaffold(
      backgroundColor: ThemeColor.frontBackgruondColor,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (screenWidth > minScreenWidth) {
            return LayoutTemplateWidget(size: minScreenWidth);
          } else {
            return LayoutTemplateWidget(size: screenWidth);
          }
        },
      ),
    );
  }
}
