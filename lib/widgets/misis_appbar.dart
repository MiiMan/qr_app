import 'package:flutter/cupertino.dart';

import '../consts.dart' as consts;

class MisisAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String asset, title;
  final double height;

  const MisisAppBar({Key? key, required this.asset, required this.title, required this.height}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: consts.misisBlue,
          height: height,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(asset, scale: 2,),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top:50, left: 20),
                  child: Text(title, style: consts.misisHeaderWhite36Pt,)
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}