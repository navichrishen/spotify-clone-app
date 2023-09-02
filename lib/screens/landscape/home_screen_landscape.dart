import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../components/circular_album_view.dart';
import '../../../components/huge_rectangular_album.dart';
import '../../../components/long_album_view.dart';
import '../../../components/square_album_view.dart';
import '../home_screen.dart';
import '../my_library_screen.dart';
import '../search_screen.dart';

class HomeScreenLandScape extends StatefulWidget {
  const HomeScreenLandScape({super.key});

  @override
  State<HomeScreenLandScape> createState() => _HomeScreenLandScapeState();
}

class _HomeScreenLandScapeState extends State<HomeScreenLandScape> {
  int _index = 0;
  final List<Widget> screens = [const HomePage(), SearchTab(), MyLibrary()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: 220,
              color: Colors.white12,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(5)),
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      icon: Icon(Icons.home_filled),
                      label: const Text('Home',
                          style: TextStyle(fontFamily: 'Gotham', fontSize: 15)),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      icon: Icon(Icons.search),
                      label: const Text('Search',
                          style: TextStyle(fontFamily: 'Gotham', fontSize: 15)),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.transparent,
                        foregroundColor: Colors.white,
                      ),
                      icon: Icon(Icons.my_library_music),
                      label: const Text('Your library',
                          style: TextStyle(fontFamily: 'Gotham', fontSize: 15)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                      child: Container(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                      height: 5,
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
                                  icon: ImageIcon(
                                      AssetImage('assets/icons/heart.png')),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: ImageIcon(
                                    AssetImage(
                                        'assets/icons/audio-speaker.png'),
                                    size: 50,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: ImageIcon(
                                    AssetImage('assets/icons/play-button.png'),
                                    size: 80,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.skip_next,
                                    size: 40,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              LongAlbum(
                                  image: 'assets/album_images/likedsongs.png',
                                  title: 'Liked Songs'),
                              SizedBox(
                                width: 10,
                              ),
                              LongAlbum(
                                  image: 'assets/album_images/sigmasad.jpeg',
                                  title: 'SIGMA SAD\n SONGS 😔'),
                              SizedBox(
                                width: 10,
                              ),
                              LongAlbum(
                                  image:
                                      'assets/album_images/navisplaylist.jpeg',
                                  title: "Navi's Playlist 2"),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10)),
                              LongAlbum(
                                  image:
                                      'assets/album_images/riseandgrind.jpeg',
                                  title: 'Rise and Grind'),
                              SizedBox(
                                width: 10,
                              ),
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
                          ),
                          const SizedBox(
                            height: 10,
                          ),
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
            ),
          ],
        ),
      ),
    );
  }
}
