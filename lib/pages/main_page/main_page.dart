import 'package:flutter/material.dart';
import 'package:qr_app/widgets/misis_appbar.dart';
import 'package:qr_app/widgets/navigation_bar.dart';

import 'main_screen.dart';
import 'profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  void changeScreen() {

  }

  void onNavigationBarTap(int val) {
    i = val;
    setState(() {});
  }

  void onNavigationBarButtonPressed() {

  }

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: const MisisAppBar(
        height: 120,
        title: 'Главная',
        asset: 'assets/main.png',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: i == 0? MainScreen():ProfileScreen()
      ),
      bottomNavigationBar: NavigationBar(
        items: [Icons.calendar_today_sharp, Icons.qr_code_scanner, Icons.account_box_sharp],
        onPressed: onNavigationBarButtonPressed,
        onTap: onNavigationBarTap,
        currentIndex: i
      )
    );
  }
}
