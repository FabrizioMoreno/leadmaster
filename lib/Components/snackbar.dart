import 'package:flutter/material.dart';

SnackBar snackBar(String mensaje) {
  return SnackBar(
    content: Text(mensaje),
    duration: const Duration(seconds: 4),
    backgroundColor: const Color.fromRGBO(11, 39, 70, 1), // Cambia el color aquí
    behavior: SnackBarBehavior.floating,
  );
}