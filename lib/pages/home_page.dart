import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_newBar.dart';
import 'package:leadmaster/Components/my_textfiled.dart';


class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState()=>_HomePage();
}
class _HomePage extends State<HomePage>{
  final textSearch = TextEditingController();
  int _dropDownValue = 0;
  List<String> dropdownItems = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];
  String selectedItem = 'Item 1'; // Elemento seleccionado inicialmente

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:
      Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(child:
                      Text('Bienvenido',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Icon(Icons.person_add_alt_1,size: 30,)
                  ],
                ),
            ),
            const SizedBox(height: 20,),
            MyTextfield(controller: textSearch, hintText: "Buscar tableros", obscureText: false),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30),
              child :Row(
                mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    DropdownButton<String>(
                      value: selectedItem,
                      onChanged: (newValue) {
                        setState(() {
                          selectedItem = newValue!;
                        });
                      },
                      items: dropdownItems.map((String item){
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                    )
                  ],
              ),
            ),

          ]
        ),
      ),
    );
  }
}