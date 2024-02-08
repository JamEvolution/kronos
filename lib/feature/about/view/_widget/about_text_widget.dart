import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/app/app_constants.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';

class AboutTextWidget extends StatelessWidget {
  final double size;

  const AboutTextWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
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
          padding: const EdgeInsets.all(8.0),
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
