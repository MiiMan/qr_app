import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

//Colors
const Color
  misisBlue = Color(0xFF27B4F6),
  misisLightBlue = Color(0xFFB8E5F9),
  misisGray = Color(0xFFF7F7F9),
  misisDarkGray = Color(0xFF7B8083),
  misisWhite = Color(0xFFFFFFFF),
  misisRed = Color(0xFFF22929),
  misisGreen = Color(0xFF63B479),
  misisBlack = Color(0xFF373A3C);

//MaterialColors
final MaterialColor materialMisisBlue = generateMaterialColor(color: misisBlue);

//TextStyles
const TextStyle
    misisHeaderWhite36Pt = TextStyle(fontSize: 36, color: misisWhite, fontWeight: FontWeight.w900),
    misisHeaderBlack36Pt = TextStyle(fontSize: 36, color: misisBlack, fontWeight: FontWeight.w900, height: 1.5),
    misisHeaderBlack24Pt = TextStyle(fontSize: 24, color: misisBlack, fontWeight: FontWeight.w400),
    misisHeaderBlack18Pt = TextStyle(fontSize: 18, color: misisBlack, fontWeight: FontWeight.w900),
    misisHeaderWhite18Pt = TextStyle(fontSize: 18, color: misisWhite, fontWeight: FontWeight.w900),
    misisButtonGreen14Pt = TextStyle(fontSize: 14, color: misisGreen, fontWeight: FontWeight.w400),
    misisButtonRed14Pt = TextStyle(fontSize: 14, color: misisRed, fontWeight: FontWeight.w400),
    misisTextBlack14Pt = TextStyle(fontSize: 14, color: misisBlack, fontWeight: FontWeight.w400),
    misisTextDarkGray14Pt = TextStyle(fontSize: 14, color: misisDarkGray, fontWeight: FontWeight.w300),
    misisTextGreen12Pt = TextStyle(fontSize: 12, color: misisGreen, fontWeight: FontWeight.w300);


//assets