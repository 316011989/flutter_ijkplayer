import 'package:flutter/material.dart';
import 'package:ymdy/i18n/i18n.dart';
import 'package:ymdy/page/discover_fragment.dart';
import 'package:ymdy/page/mine_fragment.dart';
import 'package:ymdy/page/tabs_fragment.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationWidgetState();
}

class BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final _bottomNavigationColor = Colors.deepPurple;
  int _currentIndex = 0;
  List<Widget> pages = List();

  @override
  void initState() {
    pages..add(TabsScreen())..add(DiscoverScreen())..add(MineScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _bottomNavigationColor,
              ),
              title: Text(
                currentI18n.tabsScreenTitle,
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.all_inclusive,
                color: _bottomNavigationColor,
              ),
              title: Text(
                currentI18n.discoverScreenTitle,
                style: TextStyle(color: _bottomNavigationColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.assignment_ind,
                color: _bottomNavigationColor,
              ),
              title: Text(
                currentI18n.mineScreenTitle,
                style: TextStyle(color: _bottomNavigationColor),
              ))
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
