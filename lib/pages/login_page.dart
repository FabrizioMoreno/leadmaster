import 'package:flutter/material.dart';
import 'package:leadmaster/Components/my_button.dart';
import 'package:leadmaster/Components/my_textfiled.dart';
import 'package:leadmaster/Components/snackbar.dart';
import 'package:leadmaster/Components/square_tile.dart';
import 'package:leadmaster/Components/textfieldPassword.dart';
import 'package:leadmaster/main.dart';
import 'package:leadmaster/pages/home_page.dart';
import 'package:leadmaster/pages/menu_page.dart';
import 'package:leadmaster/pages/signIn_page.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPageState();
}
class _LoginPageState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isInvisible = true;
  static Pattern pattern = '^[a-zA-Z0-9.a-zA-Z0-9.!#%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+[a-zA-z]';
  RegExp regExp = RegExp(pattern.toString());

  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
        Navigator.push(
            context, MaterialPageRoute(
            builder: (context) => MenuPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),*/
      body: Center(
        child: ListView(

          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const SizedBox(height: 25),

            const Icon(Icons.lock,
              size: 80,),

            const SizedBox(height: 25),
            Padding(padding:  EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                children: [
                  Text(
                    'Bienvenido',
                    style: TextStyle(color: Colors.grey[700],
                        fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25,),
            MyTextfield(
              controller: usernameController,
              hintText: 'Correo electronico',
              obscureText: false,),
            const SizedBox(height: 10,),
            MyTextfieldPassword(
              controller: passwordController,
              hintText: 'Contraseña',
              obscureText: _isInvisible,
              onPre: () {
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
                  GestureDetector(
                    onTap: () {
                      signUp();
                    },
                    child: const Text(
                      'Olvidaste tu contraseña?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),

                    ),
                  )
                ],

              ),
            ),
            const SizedBox(height: 25,),

            MyButton(
              onTap: signUserIn, text: "Iniciar Sesion",
            ),

            const SizedBox(height: 25,),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
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

            const SizedBox(height: 25,),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'lib/images/google.png'),
                SizedBox(width: 10,),
                SquareTile(imagePath: 'lib/images/apple.png')
              ],
            ),

            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No tiene cuenta?',
                  style: TextStyle(color: Colors.grey[700]),),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: () {
                    signUp();
                  },
                  child: const Text(
                    'Registrate ahora',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),

                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }

  Future<void> signUserIn() async {
    if (usernameController.text
        .trim()
        .isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          snackBar(('Se requiere un Email para continuar')));
    }
    else if (!regExp.hasMatch(usernameController.text.trim())) {
      ScaffoldMessenger.of(context).showSnackBar(
          snackBar(('Correo invalido')));
    }
    else if (passwordController.text
        .trim()
        .length < 8) {
      ScaffoldMessenger.of(context).showSnackBar(
          snackBar(('La contraseña debe contener mas de 8 caracteres')));
    } else {

      try {
        ScaffoldMessenger.of(context).showSnackBar(snackBar('Iniciando sesion'));

        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
            email: usernameController.text.toString(),
            password: passwordController.text.toString()
        );
        /*if (!userCredential.isNull) {

        }*/

        ScaffoldMessenger.of(context).showSnackBar(
            snackBar(('Inicio de sesion exitoso')));
        Navigator.pushReplacement(
            context, MaterialPageRoute(
            builder: (context) => MenuPage()));

      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found' || e.code == 'wrong-password') {
          print(
              'Error en el correo electronico o la contraseña estan incorrectos');
          ScaffoldMessenger.of(context).showSnackBar(
              snackBar(('Error en el correo electronico o la contraseña estan incorrectos')));
        }
      }
    }
  }

  void signUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MenuPage()),
    );
    //Navigator.pushReplacement
  }
  void recuperarContrasena(){

  }
}

