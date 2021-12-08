import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../consts.dart' as consts;

class WhiteTextField extends StatelessWidget {
  TextEditingController? controller;

  WhiteTextField({Key? key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        controller: controller ?? TextEditingController(),
        decoration: InputDecoration(
            filled: true,
            fillColor: consts.misisWhite,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            )
        ),
      ),
    );
  }

}