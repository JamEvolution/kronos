// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutFrontRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutFrontView(),
      );
    },
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutView(),
      );
    },
    AudioToTextRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AudioToTextView(),
      );
    },
    HomeFrontRoute.name: (routeData) {
      final args = routeData.argsAs<HomeFrontRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeFrontView(
          deneme: args.deneme,
          key: args.key,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    VideoToTextRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideoToTextView(),
      );
    },
  };
}

/// generated route for
/// [AboutFrontView]
class AboutFrontRoute extends PageRouteInfo<void> {
  const AboutFrontRoute({List<PageRouteInfo>? children})
      : super(
          AboutFrontRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutFrontRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AboutView]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AudioToTextView]
class AudioToTextRoute extends PageRouteInfo<void> {
  const AudioToTextRoute({List<PageRouteInfo>? children})
      : super(
          AudioToTextRoute.name,
          initialChildren: children,
        );

  static const String name = 'AudioToTextRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeFrontView]
class HomeFrontRoute extends PageRouteInfo<HomeFrontRouteArgs> {
  HomeFrontRoute({
    required String deneme,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeFrontRoute.name,
          args: HomeFrontRouteArgs(
            deneme: deneme,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeFrontRoute';

  static const PageInfo<HomeFrontRouteArgs> page =
      PageInfo<HomeFrontRouteArgs>(name);
}

class HomeFrontRouteArgs {
  const HomeFrontRouteArgs({
    required this.deneme,
    this.key,
  });

  final String deneme;

  final Key? key;

  @override
  String toString() {
    return 'HomeFrontRouteArgs{deneme: $deneme, key: $key}';
  }
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideoToTextView]
class VideoToTextRoute extends PageRouteInfo<void> {
  const VideoToTextRoute({List<PageRouteInfo>? children})
      : super(
          VideoToTextRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoToTextRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
