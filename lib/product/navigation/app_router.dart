import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kronos/feature/about/view/about_front_view.dart';
import 'package:kronos/feature/about/view/about_view.dart';
import 'package:kronos/feature/audio_to_text/view/audio_to_text_view.dart';
import 'package:kronos/feature/home/view/home_front_view.dart';
import 'package:kronos/feature/home/view/home_view.dart';
import 'package:kronos/feature/video_to_text/view/video_to_text_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)

/// Project router information
final class AppRouter extends _$AppRouter {
  static const _replaceInRouteName = 'View,Route';
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: HomeFrontRoute.page),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: AboutFrontRoute.page),
        AutoRoute(page: VideoToTextRoute.page),
        AutoRoute(page: AudioToTextRoute.page),
      ];
}
