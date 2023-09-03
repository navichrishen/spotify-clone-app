import 'package:flutter/material.dart';
import 'package:flutter_clone/components/home_widget.dart';

import '../home_screen.dart';
import '../my_library_screen.dart';
import '../search_screen.dart';

class HomeScreenLandScape extends StatefulWidget {
  const HomeScreenLandScape({super.key});

  @override
  State<HomeScreenLandScape> createState() => _HomeScreenLandScapeState();
}

class _HomeScreenLandScapeState extends State<HomeScreenLandScape> {
  // screen list
  final List<Widget> screens = [
    const HomePage(),
    const SearchTab(),
    const MyLibrary(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // custom side navigation bar and music player
            Container(
              height: MediaQuery.of(context).size.height,
              width: 220,
              color: Colors.white12,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    // home button
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.home_filled),
                      label: const Text('Home',
                          style: TextStyle(fontFamily: 'Gotham', fontSize: 15)),
                    ),
                    // search button
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.search),
                      label: const Text('Search',
                          style: TextStyle(fontFamily: 'Gotham', fontSize: 15)),
                    ),
                    // my library button
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      icon: const Icon(Icons.my_library_music),
                      label: const Text('Your Library',
                          style: TextStyle(fontFamily: 'Gotham', fontSize: 15)),
                    ),
                    const Expanded(child: SizedBox()),
                    // music player
                    Container(
                      alignment: Alignment.bottomLeft,
                      color: Colors.white12,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/album_images/dreamland.jpeg',
                                  width: 70,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'dreamland',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Gotham',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Øneheart',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Gotham-light',
                                        color: Colors.white60,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                    AssetImage('assets/icons/heart.png')),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          // music controls bar
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/audio-speaker.png'),
                                  size: 30,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const ImageIcon(
                                  AssetImage('assets/icons/play-button.png'),
                                  size: 180,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.skip_next,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            // opens up home widget in the remaining space
            const Expanded(
              child: HomeWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
