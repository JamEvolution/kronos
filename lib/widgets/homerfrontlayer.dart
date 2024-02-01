import 'package:flutter/material.dart';
import 'package:kronos/pages/home/audiototext.dart';
import 'package:kronos/pages/home/videototext.dart';
import 'package:kronos/widgets/CardKronos.dart';

class HomeFront extends StatefulWidget {
  const HomeFront({super.key});

  @override
  State<HomeFront> createState() => _HomeFrontState();
}

class _HomeFrontState extends State<HomeFront> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/kronosbg1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CardKronos(
            leadingIcon: Icons.video_library,
            title: 'Video To Text Convert',
            subtitle:
                'Convert any video of your choice into text with a high accuracy rate.',
            onPressed: () {
              // Butona tıklanınca yapılacak işlemler
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VideoToTextView()),
              );
            },
          ),
          CardKronos(
            leadingIcon: Icons.audiotrack,
            title: 'Audio To Text Convert',
            subtitle:
                'Convert any audio of your choice into text with a high accuracy rate.',
            onPressed: () {
              // Butona tıklanınca yapılacak işlemler
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AudioToTextView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
