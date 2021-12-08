import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_app/data/key_info.dart';

import '../consts.dart' as consts;

class KeysList extends StatelessWidget {
  final List<KeyInfo> keys;
  final InteractiveElement textElement;

  const KeysList({Key? key, required this.keys, required this.textElement}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: keys.length,
        itemBuilder: (context, i) {
      return Column(
        children: [
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: consts.misisGray,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text('${keys[i].campus}-${keys[i].number}', style: consts.misisHeaderBlack24Pt,),
                      Text('(${keys[i].times.first.start}-${keys[i].times.last.end})', overflow: TextOverflow.fade, style: consts.misisTextDarkGray14Pt)
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {textElement.onPressed(i);},
                    child: Text(textElement.text, style: TextStyle(fontSize: 14, color: textElement.color)),
                  )
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      );
    });
  }
}

class InteractiveElement {
  final String text;
  final Function(int i) onPressed;
  final Color color;

  const InteractiveElement({required this.text, required this.onPressed, required this.color});
}