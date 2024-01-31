import 'package:flutter/material.dart';

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
    double minScreenWidth = 350; // Belirli bir pixel eşik değeri

    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenWidth > minScreenWidth) {
          // Eğer ekran genişliği belirli eşik değerinden büyükse, boyutları sabit tut
          return Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(200, 24, 32, 35),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 8, 41, 91),
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
                    color: const Color.fromRGBO(249, 250, 251, 1),
                    fontFamily: 'Inter',
                    fontSize: minScreenWidth * 0.05,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.4,
                  ),
                ),
                Text(
                  subtitleText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(249, 250, 251, 1),
                    fontFamily: 'Inter',
                    fontSize: minScreenWidth * 0.04,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          );
        } else {
          // Eğer ekran genişliği belirli eşik değerinden küçükse, boyutları esnek bırak
          return Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(200, 24, 32, 35),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 8, 41, 91),
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
                    color: const Color.fromRGBO(249, 250, 251, 1),
                    fontFamily: 'Inter',
                    fontSize: screenWidth * 0.05,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.4,
                  ),
                ),
                Text(
                  subtitleText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color.fromRGBO(249, 250, 251, 1),
                    fontFamily: 'Inter',
                    fontSize: screenWidth * 0.04,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.4,
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
