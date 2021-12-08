import 'package:flutter/material.dart';

import 'consts.dart' as consts;
import 'pages/login_page.dart';
import 'pages/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR app',
      theme: ThemeData(
        primarySwatch: consts.materialMisisBlue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/LoginPage': (BuildContext context) => const LoginPage(),
        '/MainPage': (BuildContext context) => const MainPage(),
      },
      initialRoute: '/MainPage',
    );
  }
}

