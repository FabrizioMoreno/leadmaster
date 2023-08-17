import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
            //logo
            Icon(Icons.lock,
            size: 100,)]

            //welcome back

            //username textfield

            //password textfield

            //forgot password

            //sign in button

            // or continue with

            // google + apple sign in button

            // not a member? register now
            ),
        ),
      )
    );
  }
}