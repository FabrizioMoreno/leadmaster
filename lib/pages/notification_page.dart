import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});
  @override
  State<NotificationPage> createState() => _NotificationPage();
}
class _NotificationPage extends State<NotificationPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40,),
            Text("NotificationPage")
          ],
        ),
      ),
    );
  }
}