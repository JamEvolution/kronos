import 'package:auto_route/auto_route.dart';
import 'package:backdrop/backdrop.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kronos/feature/about/view/about_front_view.dart';
import 'package:kronos/feature/home/view/home_front_view.dart';
import 'package:kronos/feature/home/view/mixin/home_view_mixin.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';
import 'package:kronos/product/widgets/appbar/backdrop_appbar.dart';

@RoutePage() 
/// 
final class HomeView extends StatefulWidget {
  ///Home View constructor
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeFrontView(deneme: '',),
    const AboutFrontView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: const BackDropAppBarWidget(),
      backLayer: BackdropNavigationBackLayer(
        items: [
          BackdropItem(page: 'Home'),
          BackdropItem(page: 'About'),
        ],
        onTap: (int position) => {setState(() => _currentIndex = position)},
      ),
      backLayerBackgroundColor: ThemeColor.backDropBackgroundColor,
      headerHeight: BackDropTheme.backDropHeaderHeight,
      frontLayer: _pages[_currentIndex],
    );
  }

  // ignore: non_constant_identifier_names
  ListTile BackdropItem({String page = ''}) {
    return ListTile(
      title: Text(
        page,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontStyle: FontStyle.italic,
        ),
      ).tr(),
    );
  }
}
