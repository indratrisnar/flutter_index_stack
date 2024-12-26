import 'dart:developer';

import 'package:flutter/material.dart';

class BookmarkFragment extends StatefulWidget {
  const BookmarkFragment({super.key});

  @override
  State<BookmarkFragment> createState() => _BookmarkFragmentState();
}

class _BookmarkFragmentState extends State<BookmarkFragment> {
  @override
  void initState() {
    log('init Bookmark');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('build Bookmark');
    return Center(
      child: Text(
        'Bookmark',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black45,
        ),
      ),
    );
  }
}
