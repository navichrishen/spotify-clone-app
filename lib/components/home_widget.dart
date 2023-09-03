import 'package:flutter/material.dart';

import 'circular_album_view.dart';
import 'huge_rectangular_album.dart';
import 'long_album_view.dart';
import 'square_album_view.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: SafeArea(
          // main column holding the components
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top bar of the application
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
                    // notification , settings , history icon buttons
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
                // recently played playlists
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        LongAlbum(
                            image: 'assets/album_images/likedsongs.png',
                            title: 'Liked Songs'),
                        SizedBox(
                          width: 10,
                        ),
                        LongAlbum(
                            image: 'assets/album_images/sigmasad.jpeg',
                            title: 'SIGMA SAD SONGS'),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        LongAlbum(
                            image: 'assets/album_images/navisplaylist.jpeg',
                            title: "Navi's Playlist 2"),
                        SizedBox(
                          width: 10,
                        ),
                        LongAlbum(
                            image: 'assets/album_images/riseandgrind.jpeg',
                            title: 'Rise and Grind'),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          width: 10,
                        ),
                        LongAlbum(
                            image: 'assets/album_images/90s.jpeg',
                            title: 'Release Radar'),
                        SizedBox(
                          width: 10,
                        ),
                        LongAlbum(
                          image: 'assets/album_images/cigarettes.webp',
                          title: 'Cigarettes After \nSex',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
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
                          image: 'assets/album_images/postmalonedailymix.jpeg',
                          albumName: 'Post Malone , One Direction Daily mix 1'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix2.jpeg',
                          albumName: 'One Direction , Westlife Daily mix 2'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix3.jpeg',
                          albumName: 'Eminem , Linkin Park Daily mix 3'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix4.jpeg',
                          albumName: 'Green Day , One Republic Daily mix 4'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix5.jpeg',
                          albumName: 'Travis Scott , Snoop Dogg Daily mix 5'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix6.jpeg',
                          albumName: 'Drake , Selena Gomez Park Daily mix 6'),
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
                              'Billie Eilish , Lana Del Ray Daily mix 1'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix2row2.jpeg',
                          albumName: 'Rihanna , Miley Cyrus Daily mix 2'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix3row2.jpeg',
                          albumName: 'The Weekend , Ed Sheeran Daily mix 3'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix4row2.jpeg',
                          albumName: 'J. Cole , Lil Uzi Vert Daily mix 4'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix5row2.jpeg',
                          albumName: 'Harry Styles , ZAYN Daily mix 5'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix6row2.jpeg',
                          albumName:
                              'Black Street Boys , Boyce Avenue Daily mix 6'),
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
                          image: 'assets/album_images/postmalonedailymix.jpeg',
                          albumName: 'Post Malone , One Direction Daily mix 1'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix2.jpeg',
                          albumName: 'One Direction , Westlife Daily mix 2'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix3.jpeg',
                          albumName: 'Eminem , Linkin Park Daily mix 3'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix4.jpeg',
                          albumName: 'Green Day , One Republic Daily mix 4'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix5.jpeg',
                          albumName: 'Travis Scott , Snoop Dogg Daily mix 5'),
                      SizedBox(
                        width: 15,
                      ),
                      SquareAlbum(
                          image: 'assets/album_images/dailymix6.jpeg',
                          albumName: 'Drake , Selena Gomez Park Daily mix 6'),
                      SizedBox(
                        width: 10,
                      ),
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
