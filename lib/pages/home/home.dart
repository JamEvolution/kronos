import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';
import 'package:kronos/widgets/aboutfrontlayer.dart';
import 'package:kronos/widgets/homerfrontlayer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomeFront(), AboutFront()];
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
        actions: const <Widget>[],
      ),
      backLayer: BackdropNavigationBackLayer(
        items: [
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "About",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
        onTap: (int position) => {setState(() => _currentIndex = position)},
      ),
      backLayerBackgroundColor: const Color.fromARGB(255, 24, 32, 35),
      headerHeight: 30.0,
      frontLayer: _pages[_currentIndex],
    );
  }
}