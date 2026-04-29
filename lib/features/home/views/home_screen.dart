import 'package:flutter/material.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_drawer.dart';
import '../widgets/home_bottom_nav.dart';

import 'counter_screen.dart';
import 'reports_screen.dart';
import 'today_screen.dart';
import 'items_screen.dart';
import 'more_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2; // default = Counter

  final List<Widget> _screens = const [
    ReportsScreen(),
    TodayScreen(),
    CounterScreen(),
    ItemsScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppBar(),
      drawer: const HomeDrawer(),
      bottomNavigationBar: HomeBottomNav(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: _screens[selectedIndex],
    );
  }
}