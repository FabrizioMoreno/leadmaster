import 'package:flutter/material.dart';

class MyClipRect extends StatelessWidget{
  final Widget container;
  final bool isSelected;
  final BorderRadius borderRadius;
  final BoxBorder? boxBorder;
  final int color1;
  final int color2;
  const MyClipRect({
    super.key,
    required this.container,
    required this.isSelected,
    required this.borderRadius,
    required this.boxBorder,
    required this.color1,
    required this.color2
  });
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: borderRadius,
        child:Stack(
        children: <Widget>[
          Positioned.fill(child: Container(
            decoration: BoxDecoration(
                border: boxBorder,
                borderRadius: borderRadius,
                color: Color(isSelected? color1 : color2),
                //border
              /*gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xFF807F7F),
                                Color(0xFFCBCBCB),0xFF0C4FB2
                                Color(isSelected? 0xFFEEEEEE : 0xFFEEEEEE),
                              ],
                            ),*/
            ),
          ),
          ),
          Container(child: container,alignment: Alignment.centerLeft,),
        ],
      ),
    );
  }
}
