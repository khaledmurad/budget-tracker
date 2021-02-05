import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:market_app/pages/profile.dart';
import 'package:market_app/pages/stats.dart';

import 'budjet.dart';
import 'creat_budget.dart';
import 'daily.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List<Widget> pages = [
    DailyPage(),
    StatsPage(),
    BudgetPage(),
    ProfilePage(),
    CreatBudgetPage()
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  List<IconData> iconItems = [
    Ionicons.md_calendar,
    Ionicons.md_stats,
    Ionicons.md_wallet,
    Ionicons.ios_person,
  ];

  selectedTab(index) {
    setState(() {
      pageIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: pageIndex,
          children: pages,
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          activeColor: Color(0xFFFF3378),
          splashColor: Color(0xFFfdd278),
          inactiveColor: Colors.black.withOpacity(0.5),
          icons: iconItems,
          activeIndex: pageIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          leftCornerRadius: 10,
          iconSize: 25,
          rightCornerRadius: 10,
          onTap: (index) {
            selectedTab(index);
          },
          //other params
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              selectedTab(4);
            },
            child: Icon(
              Icons.add,
              size: 25,
            ),
            backgroundColor: Colors.pink
          //params
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked);
  }
}
