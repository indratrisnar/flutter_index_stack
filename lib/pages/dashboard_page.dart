import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_index_stack/pages/fragments/bookmark_fragment.dart';
import 'package:flutter_index_stack/pages/fragments/home_fragment.dart';
import 'package:flutter_index_stack/pages/fragments/settings_fragment.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final menu = [
    ('Home', Icons.home, HomeFragment()),
    ('Bookmark', Icons.bookmark, BookmarkFragment()),
    ('Settings', Icons.settings, SettingsFragment()),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    log('init Dashboard');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[currentIndex].$3,
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: menu.map((e) => e.$3).toList(),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey.shade400,
        items: List.generate(menu.length, (index) {
          final item = menu[index];
          return BottomNavigationBarItem(
            icon: Icon(item.$2),
            label: item.$1,
          );
        }),
      ),
    );
  }
}
