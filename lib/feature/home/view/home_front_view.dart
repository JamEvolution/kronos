import 'package:flutter/material.dart';
import 'package:kronos/feature/audio_to_text/view/audio_to_text_view.dart';
import 'package:kronos/feature/home/view/_widget/home_card_widget.dart';
import 'package:kronos/feature/video_to_text/view/video_to_text_view.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';

class HomeFrontView extends StatefulWidget {
  const HomeFrontView({super.key});

  @override
  State<HomeFrontView> createState() => _HomeFrontState();
}

class _HomeFrontState extends State<HomeFrontView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.frontBackgruondColor,
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: HomeCardWidget(
                      leadingIcon: Icons.video_library,
                      title: 'Video To Text Convert',
                      subtitle:
                          'Convert any video of your choice into text with a high accuracy rate.',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const VideoToTextView(),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: HomeCardWidget(
                      leadingIcon: Icons.audiotrack,
                      title: 'Audio To Text Convert',
                      subtitle:
                          'Convert any audio of your choice into text with a high accuracy rate.',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AudioToTextView(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
