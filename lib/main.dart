import 'package:flutter/material.dart';
import 'package:flutter_clone/components/navigation_bar.dart';
import 'package:flutter_clone/screens/landscape/home_screen_landscape.dart';

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
      // basic theme of the application
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Colors.black38,
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        // orientation builder to maintaion the screens when orientation changed
        body: OrientationBuilder(
            builder: (context, orientation) =>
                orientation == Orientation.portrait
                    ? const NavBar()
                    : const HomeScreenLandScape()),
      ),
    );
  }
}
