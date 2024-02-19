import 'package:flutter/material.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';
import 'package:kronos/product/widgets/padding/project_paddig.dart';

class DivflexWidget extends StatelessWidget {
  const DivflexWidget({
    Key? key,
    required this.leadingText,
    required this.subtitleText,
    required this.backgroundImage,
  }) : super(key: key);

  final String leadingText;
  final String subtitleText;
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minScreenWidth = 400;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenWidth > minScreenWidth) {
          return Container(
            decoration: BoxDecoration(
              color: ThemeColor.cardBackgruondColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    radius: minScreenWidth * 0.1,
                    backgroundImage: AssetImage(backgroundImage),
                  ),
                ),
                Text(
                  leadingText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ThemeColor.textColor,
                    fontFamily: 'Inter',
                    fontSize: minScreenWidth * 0.048,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.4,
                  ),
                ),
                Padding(
                  padding: const ProjectPadding.allSmall(),
                  child: Text(
                    subtitleText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ThemeColor.textColor,
                      fontFamily: 'Inter',
                      fontSize: minScreenWidth * 0.038,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.normal,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: ThemeColor.cardBackgruondColor,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: CircleAvatar(
                    radius: screenWidth * 0.1,
                    backgroundImage: AssetImage(backgroundImage),
                  ),
                ),
                Text(
                  leadingText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ThemeColor.textColor,
                    fontFamily: 'Inter',
                    fontSize: screenWidth * 0.03,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.4,
                  ),
                ),
                Padding(
                  padding: const ProjectPadding.allSmall(),
                  child: Text(
                    subtitleText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ThemeColor.textColor,
                      fontFamily: 'Inter',
                      fontSize: screenWidth * 0.02,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.normal,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
