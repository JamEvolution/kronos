import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kronos/feature/home/view/_widget/home_card_widget.dart';
import 'package:kronos/product/navigation/app_router.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';
import 'package:kronos/product/widgets/padding/project_paddig.dart';
import 'package:uiwidget/uiwidget.dart';

@RoutePage()

/// HomeFront layer view
final class HomeFrontView extends StatefulWidget {
  /// HomeFront constructor
  const HomeFrontView({required this.deneme, super.key});

  final String deneme;

  @override
  State<HomeFrontView> createState() => _HomeFrontState();
}

class _HomeFrontState extends State<HomeFrontView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SuccessDialog.show(title: 'Example', context: context);
        },
      ),
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
                    padding: const ProjectPadding.allMedium(),

                    /// Kanka responsive widgetim bu modüle ui widgetten geliyor bu !!!!
                    child: AdaptAllView(
                      phone: HomeCardWidget(
                        leadingIcon: Icons.video_library,
                        title: 'Video To Text Convert',
                        subtitle:
                            'Convert any video of your choice into text with a high accuracy rate.',
                        onPressed: () {
                          /// will be Type use await
                          context.router.push(const VideoToTextRoute());
                        },
                      ),
                      tablet: HomeCardWidget(
                        leadingIcon: Icons.video_library,
                        title: 'Video To Text Convert',
                        subtitle:
                            'Convert any video of your choice into text with a high accuracy rate.',
                        onPressed: () {
                          /// will be Type use await
                          context.router.push(const VideoToTextRoute());
                        },
                      ),
                      desktop: HomeCardWidget(
                        leadingIcon: Icons.video_library,
                        title: 'Video To Text Convert',
                        subtitle:
                            'Convert any video of your choice into text with a high accuracy rate.',
                        onPressed: () {
                          /// will be Type use await
                          context.router.push(const VideoToTextRoute());
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const ProjectPadding.allMedium(),
                    child: HomeCardWidget(
                      leadingIcon: Icons.audiotrack,
                      title: 'Audio To Text Convert',
                      subtitle:
                          'Convert any audio of your choice into text with a high accuracy rate.',
                      onPressed: () {
                        context.router.push(const AudioToTextRoute());
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
