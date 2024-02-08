import 'package:flutter/material.dart';

class AboutText extends StatelessWidget {
  final double size;

  const AboutText({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              fontSize: size,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
