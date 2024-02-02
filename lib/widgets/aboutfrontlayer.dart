import 'package:flutter/material.dart';
import 'package:kronos/widgets/denemecard.dart';

class AboutFront extends StatelessWidget {
  const AboutFront({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double minScreenWidth = 400; // Belirli bir pixel eşik değeri

    return LayoutBuilder(
      builder: (context, constraints) {
        if (screenWidth > minScreenWidth) {
          // Eğer ekran genişliği belirli eşik değerinden büyükse, boyutları sabit tut
          return Container(
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/kronosbg1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(200, 24, 32, 35),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blue,
                        width: 3,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Kronos, videonuzu otomatik olarak 18 dilde metne çevirir, size manuel çaba harcamaktan tasarruf sağlar. Dahası, Kronos video çevirmeni ile videolarınızı 28 dile çevirebilirsiniz. Kronos video metin AI dönüştürücü ile videonuzu tüm kitlelere daha erişilebilir ve kapsayıcı hale getirin.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth > minScreenWidth
                              ? minScreenWidth * 0.04
                              : screenWidth * 0.04,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
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
                Row(
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
          );
        } else {
          // Eğer ekran genişliği belirli eşik değerinden küçükse, boyutları esnek tut
          return Container(
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/kronosbg1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(200, 24, 32, 35),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 8, 41, 91),
                        width: 3,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Kronos, videonuzu otomatik olarak 18 dilde metne çevirir, size manuel çaba harcamaktan tasarruf sağlar. Dahası, Kronos video çevirmeni ile videolarınızı 28 dile çevirebilirsiniz. Kronos video metin AI dönüştürücü ile videonuzu tüm kitlelere daha erişilebilir ve kapsayıcı hale getirin.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.044,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DivflexWidget(
                        leadingText: 'Murat ZABUN',
                        subtitleText: 'Chief Executive Officer\n(CEO)',
                        backgroundImage: 'images/avatarzabun.jpg',
                      ),
                    ],
                  ),
                ),
                Row(
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
          );
        }
      },
    );
  }
}
