import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/app/app_constants.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';
import 'package:kronos/product/widgets/padding/project_paddig.dart';

class AboutTextWidget extends StatelessWidget {
  final double size;

  const AboutTextWidget({
    required this.size, Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const ProjectPadding.allMedium(),
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColor.cardBackgruondColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.blue,
            width: 3,
          ),
        ),
        child: Padding(
          padding: const ProjectPadding.allSmall(),
          child: Text(
            ApplicationConstants.COMPANY_ABOUT,
            style: TextStyle(
              color: Colors.white,
              fontSize: size,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
