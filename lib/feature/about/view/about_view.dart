import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';
import 'package:kronos/feature/about/view/about_front_view.dart';
import 'package:kronos/feature/home/view/home_front_view.dart';
import 'package:kronos/product/utility/constants/app/app_theme.dart';
import 'package:kronos/product/widgets/appbar/backdrop_appbar.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  int _currentIndex = 1;
  final List<Widget> _pages = [
    const HomeFrontView(),
    const AboutFrontView(),
  ];
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: const BackDropAppBarWidget(),
      backLayer: BackdropNavigationBackLayer(
        items: [BackdropItem(page: 'Home'), BackdropItem(page: 'About')],
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
      ),
    );
  }
}
