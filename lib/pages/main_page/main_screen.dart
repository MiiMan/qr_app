import 'package:flutter/material.dart';
import 'package:qr_app/consts.dart' as consts;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Расписание', style: consts.misisHeaderBlack36Pt,),
          const SizedBox(height: 30,),
          Container(
            height: 200,
            color: consts.misisGray,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('Нажмите чтобы увидеть полностью', style: consts.misisTextDarkGray14Pt,),
          ),
          const SizedBox(height: 10,),
          const Divider(),
          const Text('Забронировать', style: consts.misisHeaderBlack36Pt),
          const SizedBox(height: 30,),
          Container(
            height: 50,
            color: consts.misisGray,
          ),
          const SizedBox(height: 10,),
          Container(
            height: 50,
            color: consts.misisGray,
          ),
        ],
      ),
    );
  }
}
