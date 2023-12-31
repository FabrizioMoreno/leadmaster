import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_cliprect.dart';


class MyWorkPage extends StatefulWidget{
  const MyWorkPage({super.key});
  @override
  State<MyWorkPage> createState() => _MyWorkPage();

}
class _MyWorkPage extends State<MyWorkPage>{
  bool? isChecked = false;
  int selected = 0;
  int nTableros = 1;
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
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child:
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                        child: MyClipRect(
                            color1: 0x7B1565C0,
                            color2: 0xFFEEEEEE,
                            borderRadius: BorderRadius.circular(5.0),
                            boxBorder: null,
                            container: Container(
                              child: Row(
                                children: [
                                  Checkbox(value: isChecked,
                                  onChanged: (newBool){
                                    setState(() {
                                      isChecked = newBool;
                                    });
                                  },
                                  activeColor: Colors.blue[800],
                              //tristate: true,
                                  ),
                                  Text("Ocultar elementos listos",style: TextStyle(color: Colors.grey[500]),),
                                ],
                              ),
                          ),
                          isSelected: false,
                        ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: MyClipRect(
                      color1: 0x7B1565C0,
                      color2: 0xFFEEEEEE,
                      borderRadius: BorderRadius.circular(5.0),
                      boxBorder: null,
                      container: Container(
                        child: Row(children: [
                          TextButton(
                            onPressed: (){},
                            child: Text("Tableros($nTableros)",
                              style: TextStyle(
                                  color: Colors.grey[500]
                              ),
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Color(0xFFFFFF),
                              //backgroundColor: Colors.grey.shade200,
                            ),
                          ),
                        ]
                        ),
                      ),
                      isSelected: false,
                    ),
                  ),
                ],
              ),
             SizedBox(height: 30,),

             SizedBox(height: 90,
               child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
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
                        width: 100,
                        child: Column( // Cambia esta alineación según tus necesidades
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                              child:
                              Text("0",style: TextStyle(fontSize: 20),),
                            ),
                            const Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
                              child: Text("Fechas pasadas"),
                            ),
                          ],
                        ),
                      ),
                      isSelected: selected==1? true : false,
                    ),
                  )
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
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
                         width: 100,
                         child: Column( // Cambia esta alineación según tus necesidades
                           children: [
                             Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               child:
                               Text("0",style: TextStyle(fontSize: 20),),

                             ),
                             Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
                               child: Text("Hoy                          "),
                             )
                           ],
                         ),
                       ),
                     isSelected: selected==2? true : false,
                   ),
                  ),
                 ),

                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
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
                         width: 100,
                         child: Column( // Cambia esta alineación según tus necesidades
                           children: [
                             Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               child:
                               Text("0",style: TextStyle(fontSize: 20),),

                             ),
                             Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
                               child: Text("Esta semana"),
                             )
                           ],
                         ),
                       ),
                      isSelected: selected==3? true : false,
                   ),
                  )
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
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
                         width: 100,
                         child: Column( // Cambia esta alineación según tus necesidades
                           children: [
                             Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               child:
                               Text("0",style: TextStyle(fontSize: 20),),

                             ),
                             Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
                               child: Text("La próxima semana"),
                             )
                           ],
                         ),
                       ),
                     isSelected: selected==4? true : false,
                   ),
                   ),
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
                   GestureDetector(onTap: (){
                     setState(() {
                       selected = 5;
                     });
                   },
                     child: MyClipRect(
                       color1: 0x7B1565C0,
                       color2: 0xFFEEEEEE,
                       borderRadius: BorderRadius.circular(5.0),
                       boxBorder: null,
                       container: Container(
                         width: 100,
                           child: Column(// Cambia esta alineación según tus necesidades
                             children: [
                               Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                                 child:
                                 Text("0",style: TextStyle(fontSize: 20),),

                               ),
                               Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
                                 child: Text("Más tarde             "),
                               )
                             ],
                           ),
                       ),
                     isSelected: selected==5? true : false,
                   ),
                   ),
                 ),
                 Padding(padding: EdgeInsets.symmetric(horizontal: 10),child:
                   GestureDetector(onTap: (){
                     setState(() {
                       selected = 6;
                     });
                   },
                     child:MyClipRect(
                       color1: 0x7B1565C0,
                       color2: 0xFFEEEEEE,
                       borderRadius: BorderRadius.circular(5.0),
                       boxBorder: null,
                       container: Container(
                         width: 100,
                         child: Column( // Cambia esta alineación según tus necesidades
                           children: [
                             Padding(padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
                               child:
                               Text("0",style: TextStyle(fontSize: 20),),

                             ),
                             Padding(padding:  EdgeInsets.symmetric(horizontal: 10),
                               child: Text("Sin fecha"),
                             )
                           ],
                         ),
                       ),
                     isSelected: selected==6? true : false,
                   ),
                   )
                 )
               ],
             ),
             ),
           ],
         ),

       ),
       floatingActionButton: FloatingActionButton(onPressed: () {
         setState(() {

         });
       },
         foregroundColor: Colors.white,
         backgroundColor: Colors.blue[800],
         shape: CircleBorder(),
         child: const Icon(Icons.note_add_outlined),
       ),
     );
   }
}
