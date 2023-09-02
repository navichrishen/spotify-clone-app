import 'package:flutter/material.dart';
import 'package:flutter_clone/components/music_player.dart';
import 'package:flutter_clone/components/navigation_bar.dart';
import 'package:flutter_clone/screens/home_screen.dart';
import 'package:flutter_clone/screens/landscape/home_screen_landscape.dart';
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
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black38,
        brightness: Brightness.dark,
      ),
      //home: const NavBar(),
      home: Scaffold(
        body: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? const NavBar()
                    : const HomeScreenLandScape()),
      ),
    );
  }
}
