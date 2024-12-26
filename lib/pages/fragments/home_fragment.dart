import 'dart:developer';

import 'package:flutter/material.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  void initState() {
    log('init Home');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('build Home');
    return Center(
      child: Text(
        'Home',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black45,
        ),
      ),
    );
  }
}
