import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:using_getx/views/add_record.dart';
import 'package:using_getx/views/graph.dart';
import 'package:using_getx/views/history.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentTab = 0;
  Widget _currentScreen = const GraphScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _currentScreen,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
          onPressed: () {
            Get.to(() => const addRecordView());
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height / 12,
        gapLocation: GapLocation.center,
        backgroundColor: Colors.black,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        icons: const [Icons.show_chart, Icons.history],
        iconSize: 30,
        activeIndex: _currentTab,
        onTap: (int) {
          setState(() {
            _currentTab = int;
            _currentScreen =
                (int == 0) ? const GraphScreen() : const HistoryScreen();
          });
        },
      ),
    );
  }
}
