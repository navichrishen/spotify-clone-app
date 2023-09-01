import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
                        fontSize: 24,
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
          ],
        )),
      ),
    );
  }
}
