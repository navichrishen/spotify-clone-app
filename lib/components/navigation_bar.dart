import 'package:flutter/material.dart';
import 'package:flutter_clone/components/music_player.dart';
import 'package:flutter_clone/screens/home_screen.dart';
import 'package:flutter_clone/screens/my_library_screen.dart';
import 'package:flutter_clone/screens/search_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentScreen = 0;
  final List<Widget> screens = [const HomePage(), SearchTab(), MyLibrary()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Scaffold(
            body: screens[currentScreen],
            bottomNavigationBar: Container(
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 12,
                unselectedFontSize: 12,
                selectedItemColor: Colors.white,
                unselectedItemColor: Color.fromARGB(103, 255, 255, 255),
                currentIndex: currentScreen,
                onTap: (int screen) {
                  setState(() {
                    currentScreen = screen;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_filled), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.library_music), label: 'Library'),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 55,
            left: 6,
            right: 6,
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MusicPlayer())),
              child: Expanded(
                  child: Material(
                color: Colors.transparent,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 17, 75, 129),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          'assets/album_images/dreamland.jpeg',
                          fit: BoxFit.cover,
                          width: 50,
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
                        icon: Icon(Icons.laptop_chromebook),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/icons/heart.png'),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/icons/play-button-arrowhead.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
