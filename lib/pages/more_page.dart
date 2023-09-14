import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_cliprect.dart';


class MorePage extends StatefulWidget{
  const MorePage({super.key});
  @override
  State<MorePage> createState() => _MorePage();

}
class _MorePage extends State<MorePage>{
  int nContactos = 1;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 20,),
            SizedBox(height: 20,),
            Icon(Icons.person, size: 60,),
            Text("Ver perfil", style: TextStyle(color: Colors.grey[500]),),
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: SizedBox(height: 70,
                  child: MyClipRect(
                    color1: 0x7B1565C0,
                    color2: 0xFFFFFF,
                    borderRadius: BorderRadius.circular(10),
                    isSelected: false,
                    boxBorder: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xFFCECECE),
                        width: 2
                    ),
                    container:
                    Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Icon(Icons.markunread_mailbox_outlined,size: 35,),
                                      ),
                                  Expanded(child:
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Buzón", style: TextStyle(fontSize: 16,),),
                                        SizedBox(height: 5,),
                                        Text("No hay actualizaciones nuevas", style: TextStyle(fontSize: 13))
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.arrow_forward_ios,size: 30,),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),
              )
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: SizedBox(height: 70,
                  child: MyClipRect(
                    color1: 0x7B1565C0,
                    color2: 0xFFFFFF,
                    borderRadius: BorderRadius.circular(10),
                    isSelected: false,
                    boxBorder: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xFFCECECE),
                        width: 2
                    ),
                    container:
                    Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.people_alt,size: 35,),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Mi equipo", style: TextStyle(fontSize: 16,)),
                                        SizedBox(height: 5,),
                                        Text("$nContactos contacto", style: TextStyle(fontSize: 13,)),
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.arrow_forward_ios,size: 30,),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                )
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: SizedBox(height: 70,
                  child: MyClipRect(
                    color1: 0x7B1565C0,
                    color2: 0xFFFFFF,
                    borderRadius: BorderRadius.circular(10),
                    isSelected: false,
                    boxBorder: Border.all(
                        style: BorderStyle.solid,
                        color: Color(0xFFCECECE),
                        width: 2
                    ),
                    container:
                    Stack(
                      children: <Widget>[
                        Positioned.fill(
                            child: Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.search,size: 35,),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10,),
                                        Text("Buscar en todas partes", style: TextStyle(fontSize: 16,)),
                                        SizedBox(height: 5,),
                                        Text("Tableros, paneles, documentos, etc", style: TextStyle(fontSize: 13,)),
                                      ],
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Icon(Icons.arrow_forward_ios,size: 30,),
                                  ),
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}