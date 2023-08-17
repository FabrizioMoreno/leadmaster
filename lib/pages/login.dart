import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_button.dart';
import 'package:leadmaster/Components/my_textfiled.dart';
import 'package:leadmaster/Components/square_tile.dart';
import 'package:leadmaster/Components/textfieldPassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}
class _LoginPageState extends State<Login>{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isInvisible = true;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),*/
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            const SizedBox(height: 30),
            const Icon(Icons.lock,
              size: 80,),
            const SizedBox(height: 30),

            Text(
              'Bienvenido',
              style: TextStyle(color: Colors.grey[700],
                  fontSize: 16),
            ),
            const SizedBox(height: 25,),
            MyTextfield(
              controller: usernameController,
              hintText: 'Nombre de usuario',
              obscureText: false,),
            const SizedBox(height: 10,),
            MyTextfieldPassword(
                controller: passwordController,
                hintText: 'Contraseña',
                obscureText: _isInvisible,
                onPre: (){
                  setState(() {
                    _isInvisible = !_isInvisible;
                  });
                },
            ),
            const SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Olvidaste tu contraseña?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),

            MyButton(
              onTap: signUserIn,text: "Iniciar Sesion",
            ),

            const SizedBox(height: 30,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child :Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("O continua con",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),

                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    )
                    )
                  ],
                )
            ),

            const SizedBox(height: 30,),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(width: 10,),
                SquareTile(imagePath: 'lib/images/apple.png')
              ],
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No tiene cuenta?',style: TextStyle(color: Colors.grey[700]),),
                const SizedBox(width: 4,),
                const Text('Registrate ahora', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
              ],
            )
          ],
        ),
      ),

    );
  }
  void signUserIn(){
    setState(){

    }
  }
}