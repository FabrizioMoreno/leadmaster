import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_cliprect.dart';
import 'package:leadmaster/Components/my_textfiled.dart';

class NotificationPage extends StatefulWidget{
  const NotificationPage({super.key});
  @override
  State<NotificationPage> createState() => _NotificationPage();
}
class _NotificationPage extends State<NotificationPage>{
  int selected = 0;
  final textSearch = TextEditingController();
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(child:
                  Text("MyWorkPage"),
                  ),
                  Icon(Icons.more_vert, size: 30,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15),
              child: MyTextfield(
                controller: textSearch,
                hintText: "Buscar todas las notificaciones",
                obscureText: false,
                radius: 20, suffixIcon: null, prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(padding: EdgeInsets.only(left: 15, right: 5),child:
                  GestureDetector(onTap: (){
                    setState(() {
                      selected = 1;
                    });
                  },
                    child: MyClipRect(
                      color1: 0x7B1565C0,
                      color2: 0xFFEEEEEE,
                      borderRadius: BorderRadius.circular(5.0),
                      boxBorder: null,
                      container: Container(
                        child: Column( // Cambia esta alineación según tus necesidades
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              child:
                              Text("Todas",style: TextStyle(fontSize: 14),),
                            ),
                          ],
                        ),
                      ),
                      isSelected: selected==1? true : false,
                    ),
                  )
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),child:
                  GestureDetector(onTap: (){
                    setState(() {
                      selected = 2;
                    });
                  },
                    child: MyClipRect(
                      color1: 0x7B1565C0,
                      color2: 0xFFEEEEEE,
                      borderRadius: BorderRadius.circular(5.0),
                      boxBorder: null,
                      container: Container(
                        child: Column( // Cambia esta alineación según tus necesidades
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              child:
                              Text("No leídas",style: TextStyle(fontSize: 14),),
                            ),
                          ],
                        ),
                      ),
                      isSelected: selected==2? true : false,
                    ),
                  ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 5),child:
                  GestureDetector(onTap: (){
                    setState(() {
                      selected = 3;
                    });
                  },
                    child: MyClipRect(
                      color1: 0x7B1565C0,
                      color2: 0xFFEEEEEE,
                      borderRadius: BorderRadius.circular(5.0),
                      boxBorder: null,
                      container: Container(
                        child: Column( // Cambia esta alineación según tus necesidades
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              child:
                              Text("Me mencionaron",style: TextStyle(fontSize: 14),),

                            ),
                          ],
                        ),
                      ),
                      isSelected: selected==3? true : false,
                    ),
                  )
                  ),
                  Padding(padding: EdgeInsets.only(left: 5, right: 15),child:
                  GestureDetector(onTap: (){
                    setState(() {
                      selected = 4;
                    });
                  },
                    child: MyClipRect(
                      color1: 0x7B1565C0,
                      color2: 0xFFEEEEEE,
                      borderRadius: BorderRadius.circular(5.0),
                      boxBorder: null,
                      container: Container(
                        child: Column( // Cambia esta alineación según tus necesidades
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              child:
                              Text("Me asignaron",style: TextStyle(fontSize: 14),),
                            ),
                          ],
                        ),
                      ),
                      isSelected: selected==4? true : false,
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}