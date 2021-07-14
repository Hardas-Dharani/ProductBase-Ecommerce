import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<NavBar> {
  double value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue.shade400, Colors.blue.shade800],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
          SafeArea(
              child: Container(
            width: 200.0,
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(
                            "https://www.healthshots.com/wp-content/uploads/2020/11/toxic-person-quiz.jpg"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Sharle Shoon",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: ListView(
                  children: [
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Home",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                      title: const Text(
                        "Logu out",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ))
              ],
            ),
          )),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
              builder: (_, double val, __) {
                return (Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                    ..setEntry(3, 2, 0.001)
                    ..setEntry(0, 3, 200 * val)
                    ..rotateY(pi / 6 * val),
                  child: HeadphonePage(),
                ));
              }),
          _rightClick()
        ],
      ),
    );
  }

  Widget _rightClick() {
    return GestureDetector(
      onHorizontalDragUpdate: (e) {
        if (e.delta.dx > 0) {
          setState(() {
            value = 1;
          });
        } else {
          setState(() {
            value = 0;
          });
        }
      },
    );
  }
}
