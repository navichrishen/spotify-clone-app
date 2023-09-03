import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<SearchTab> createState() => SearchTabState();
}

class SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Search Screen")),
    );
  }
}
