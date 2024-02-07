import 'package:flutter/material.dart';
import 'package:kronos/feature/home/view/mixin/home_view_mixin.dart';
import 'package:backdrop/backdrop.dart';
import 'package:kronos/widgets/aboutfrontlayer.dart';
import 'package:kronos/widgets/homerfrontlayer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    const HomeFront(),
    const AboutFront(),
  ];
  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      appBar: BackdropAppBar(
        elevation: 0,
        title: Image.asset(
          "images/kronoslogo.jpeg",
          fit: BoxFit.contain,
          height: 220.0,
          width: 220.0,
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 24, 32, 35),
      ),
      backLayer: BackdropNavigationBackLayer(
        items: [
          BackdropItem(page: "Home"),
          BackdropItem(page: "About"),
        ],
        onTap: (int position) => {setState(() => _currentIndex = position)},
      ),
      backLayerBackgroundColor: const Color.fromARGB(255, 24, 32, 35),
      headerHeight: 30.0,
      frontLayer: _pages[_currentIndex],
    );
  }

  // ignore: non_constant_identifier_names
  ListTile BackdropItem({String page=""}) {
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
