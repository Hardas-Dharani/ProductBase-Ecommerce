import 'package:flutter/material.dart';

import 'HeadPhoneScreen/Widget/navbar.dart';
import 'HeadPhoneScreen/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavBar(),
    );
  }
}
