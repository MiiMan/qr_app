import 'package:flutter/material.dart';
import 'package:qr_app/data/key_info.dart';
import 'package:qr_app/data/start_end_time.dart';
import 'package:qr_app/widgets/keys_list.dart';
import 'package:qr_app/consts.dart' as consts;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  void onExit() {
    Navigator.pushReplacementNamed(context, '/LoginPage');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Альхеев Геннадий Евгеньевич', style: consts.misisHeaderBlack36Pt),
          const SizedBox(height: 10,),
          SizedBox(
            height: 50,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 100,
                    height: 40,
                    color: const Color(0xFFF22929),
                    child: TextButton(
                      onPressed: onExit,
                      child: const Text('Выйти', style: consts.misisHeaderWhite18Pt),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: const Text('m2007379@edu.misis.ru',
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                        softWrap: false,
                      style: consts.misisTextBlack14Pt,),
                    )
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Divider(),
          const SizedBox(height: 20,),
          Text('Ключи', style: consts.misisHeaderBlack36Pt),
          const SizedBox(height: 30,),
          KeysList(keys: [const KeyInfo('Г', '511', [StartEndTime('1', '2')])], textElement: InteractiveElement(text: 'Передать', onPressed:  (int i) {}, color: consts.misisGreen),),
          Divider(),
          const SizedBox(height: 20,),
          Text('Забронировано', style: consts.misisHeaderBlack36Pt),
          const SizedBox(height: 30,),
          KeysList(keys: [const KeyInfo('К', '2', [StartEndTime('3', '4')])], textElement: InteractiveElement(text: 'Отменить', onPressed:  (int i) {}, color: consts.misisRed),),
        ],
      ),
    );
  }
}
