import 'package:flutter/material.dart';
import 'package:flutter_clone/components/long_album_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Good afternoon',
                          style: TextStyle(
                              fontFamily: 'Gotham',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/icons/bell.png'),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                                AssetImage('assets/icons/history.png')),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const ImageIcon(
                              AssetImage('assets/icons/setting.png'),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // Padding(
                          //     padding: EdgeInsets.symmetric(horizontal: 10)),
                          LongAlbum(
                              image: 'assets/album_images/likedsongs.png',
                              title: 'Liked Songs'),
                          SizedBox(
                            width: 10,
                          ),

                          LongAlbum(
                              image: 'assets/album_images/sigmasad.jpeg',
                              title: 'SIGMA SAD\n SONGS 😔')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // Padding(
                          //     padding: EdgeInsets.symmetric(horizontal: 10)),
                          LongAlbum(
                              image: 'assets/album_images/navisplaylist.jpeg',
                              title: "Navi's Playlist 2"),
                          SizedBox(
                            width: 10,
                          ),
                          LongAlbum(
                              image: 'assets/album_images/riseandgrind.jpeg',
                              title: 'Rise and Grind')
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          // Padding(
                          //     padding: EdgeInsets.symmetric(horizontal: 10)),
                          LongAlbum(
                              image: 'assets/album_images/90s.jpeg',
                              title: 'Release\nRadar'),
                          SizedBox(
                            width: 10,
                          ),
                          LongAlbum(
                              image: 'assets/album_images/cigarettes.webp',
                              title: 'Cigarettes\nAfter Sex')
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
