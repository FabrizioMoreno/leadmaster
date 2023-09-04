import 'package:flutter/material.dart';

class MyClipRect extends StatelessWidget{
  final Container container;
  final bool isSelected;
  const MyClipRect({
    super.key,
    required this.container,
    required this.isSelected
  });
  @override
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
        child:Stack(
        children: <Widget>[
          Positioned.fill(child: Container(
            decoration: BoxDecoration(
                color: Color(isSelected? 0x7B1565C0 : 0xFFEEEEEE)
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
