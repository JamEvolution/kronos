import 'package:flutter/material.dart';
import 'package:kronos/widgets/abouttext.dart';
import 'package:kronos/widgets/denemecard.dart';

class AboutFront extends StatelessWidget {
  const AboutFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minScreenWidth = 400; // Belirli bir pixel eşik değeri

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 44, 55, 66),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (screenWidth > minScreenWidth) {
            // Eğer ekran genişliği belirli eşik değerinden büyükse, boyutları sabit tut
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      AboutText(size: minScreenWidth * 0.04),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DivflexWidget(
                              leadingText: 'Murat ZABUN',
                              subtitleText: 'Chief Executive Officer\n(CEO)',
                              backgroundImage: 'images/avatarzabun.jpg',
                            )
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DivflexWidget(
                            leadingText: 'Omer UMUR',
                            subtitleText: 'Chief Technology Officer\n(CTO)',
                            backgroundImage: 'images/avataromer.jpg',
                          ),
                          DivflexWidget(
                            leadingText: 'Mehmet Ali SALEP',
                            subtitleText: 'Chief Technology Officer\n(CTO)',
                            backgroundImage: 'images/avatarmali.jpg',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          } else {
            // Eğer ekran genişliği belirli eşik değerinden küçükse, boyutları esnek tut
            return SingleChildScrollView(
              child: Stack(
                children: [
                  Column(
                    children: [
                      AboutText(size: screenWidth * 0.044),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            DivflexWidget(
                              leadingText: 'Murat ZABUN',
                              subtitleText: 'Chief Executive Officer\n(CEO)',
                              backgroundImage: 'images/avatarzabun.jpg',
                            )
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DivflexWidget(
                            leadingText: 'Omer UMUR',
                            subtitleText: 'Chief Technology Officer\n(CTO)',
                            backgroundImage: 'images/avataromer.jpg',
                          ),
                          DivflexWidget(
                            leadingText: 'Mehmet Ali SALEP',
                            subtitleText: 'Chief Technology Officer\n(CTO)',
                            backgroundImage: 'images/avatarmali.jpg',
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
