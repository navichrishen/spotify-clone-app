import 'package:flutter/material.dart';
import 'package:flutter_clone/components/navigation_bar.dart';
import 'package:flutter_clone/screens/home_screen.dart';
import 'package:flutter_clone/screens/my_library_screen.dart';
import 'package:flutter_clone/screens/search_screen.dart';

void main() {
  runApp(const SpotifyApp());
}

class SpotifyApp extends StatefulWidget {
  const SpotifyApp({super.key});

  @override
  State<SpotifyApp> createState() => _SpotifyAppState();
}

class _SpotifyAppState extends State<SpotifyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone App',
      // setting up the theme of the app
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 19, 19, 19),
        brightness: Brightness.dark,
      ),
      home: const NavBar(),
    );
  }
}
