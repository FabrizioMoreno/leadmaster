import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_newBar.dart';

class MenuPage extends StatefulWidget{
  const MenuPage({super.key});

  @override
  State<MenuPage> createState()=>_MenuPage();
}
class _MenuPage extends State<MenuPage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      const Center(
          child: Column(
              children: <Widget>[
                Text('Bienvenido'),
              ]
          )
      ),
      bottomNavigationBar: MyNewBar(),
    );
  }
}