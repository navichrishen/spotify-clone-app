import 'package:flutter/material.dart';
import 'package:flutter_clone/components/circular_album_view.dart';
import 'package:flutter_clone/components/huge_rectangular_album.dart';
import 'package:flutter_clone/components/long_album_view.dart';
import 'package:flutter_clone/components/square_album_view.dart';

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
                      const SizedBox(
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
                      const SizedBox(
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: CircularAlbum(
                        image: 'assets/album_images/kasunkalhara.jpeg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: HugeAlbum(
                      image: 'assets/album_images/kasunholdingmic.jpeg',
                      albumName: 'Bohoma Issara (Live)',
                      singerName: 'Single. Kasun Kalhara',
                      likeIcon: 'assets/icons/heart.png',
                      playIcon: 'assets/icons/play-button.png',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Made For NaviChrishen',
                      style: TextStyle(
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(children: const [
                        SquareAlbum(
                            image:
                                'assets/album_images/postmalonedailymix.jpeg',
                            albumName:
                                'Post Malone , One Direction Daily mix 1'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix3.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix4.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix5.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix6.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 10,
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Jump back in',
                      style: TextStyle(
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(children: const [
                        SquareAlbum(
                            image: 'assets/album_images/dailymix1row2.jpeg',
                            albumName:
                                'Post Malone , One Direction Daily mix 1'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix2row2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix3row2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix4row2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix5row2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix6row2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 10,
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Your top mixes',
                      style: TextStyle(
                          fontFamily: 'Gotham',
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(children: const [
                        SquareAlbum(
                            image:
                                'assets/album_images/postmalonedailymix.jpeg',
                            albumName:
                                'Post Malone , One Direction Daily mix 1'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix2.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix3.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix4.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix5.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 15,
                        ),
                        SquareAlbum(
                            image: 'assets/album_images/dailymix6.jpeg',
                            albumName: 'albumName'),
                        SizedBox(
                          width: 10,
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
