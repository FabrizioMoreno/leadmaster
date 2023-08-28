import 'package:flutter/material.dart';


class MyWorkPage extends StatefulWidget{
  const MyWorkPage({super.key});
  @override
  State<MyWorkPage> createState() => _MyWorkPage();

}
class _MyWorkPage extends State<MyWorkPage>{
   @override
  Widget build (BuildContext context){
     return Scaffold(
       body: Center(
         child: Column(
           children: <Widget>[
             const SizedBox(height: 40,),
             Text("MyWorkPage")
           ],
         ),
       ),
     );
   }
}
