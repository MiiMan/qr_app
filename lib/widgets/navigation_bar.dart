import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../consts.dart' as consts;



class NavigationBar extends StatefulWidget {

  List<IconData> items;
  int currentIndex;
  void Function(int val) onTap;
  void Function() onPressed;

  NavigationBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    required this.onPressed
  });

  State<StatefulWidget> createState() => _NavigationBar();
}
class _NavigationBar extends State<NavigationBar> with SingleTickerProviderStateMixin {

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: BottomAppBar(
        color: Colors.transparent,
        elevation: 11,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xE8FFFFFF),
                          Color(0xFFFFFFFF)
                        ]
                    ),
                  ),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Element(
                          onTap: widget.onTap,
                          id: 0,
                          icon: widget.items[0],
                          currentIndex: widget.currentIndex,
                        ),
                        Container(
                            width: 40,
                            height: 40,
                            decoration: new BoxDecoration(
                              color: consts.misisBlack,
                              shape: BoxShape.circle,
                            ),
                            child: TextButton(
                              style: ButtonStyle(
                                overlayColor: MaterialStateProperty.all(Colors.transparent),
                              ),
                              onPressed: widget.onPressed,
                              child: Icon(
                                widget.items[1],
                                color: Colors.white,
                              ),
                            )
                        ),
                        Element(
                          onTap: widget.onTap,
                          id: 1,
                          icon: widget.items[2],
                          currentIndex: widget.currentIndex,
                        )
                      ]
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Element extends StatelessWidget{

  void Function(int val) onTap;
  int id, currentIndex;
  IconData icon;

  Element({
    required this.onTap,
    required this.id,
    required this.icon,
    required this.currentIndex
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8)
          ),
          child: TextButton(
              onPressed: () {
                onTap(id);
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              child: Column(
                children: [
                  Container(
                    width: 24,
                    padding: EdgeInsets.only(bottom: 2),
                    child:  Icon(
                      icon,
                      color: consts.misisBlack,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    width: 5,
                    height: 2,
                    decoration: BoxDecoration(
                        color: currentIndex == id? consts.misisBlack: Colors.transparent,
                        borderRadius: BorderRadius.circular(3)
                    ),
                  ),
                ],
              )
          ),
        )
    );
  }

}