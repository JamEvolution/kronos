import 'package:flutter/material.dart';
import 'about_text_widget.dart';
import 'div_flex_widget.dart';

class LayoutTemplateWidget extends StatelessWidget {
  const LayoutTemplateWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              AboutTextWidget(size: size * 0.04),
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
}
