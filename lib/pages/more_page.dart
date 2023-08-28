import 'package:flutter/material.dart';


class MorePage extends StatefulWidget{
  const MorePage({super.key});
  @override
  State<MorePage> createState() => _MorePage();

}
class _MorePage extends State<MorePage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40,),
            Text("MorePage")
          ],
        ),
      ),
    );
  }
}