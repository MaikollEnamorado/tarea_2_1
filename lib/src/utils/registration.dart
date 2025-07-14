import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Registration {
  Registration({required this.ocultarTexto, required this.subIcono});
  bool ocultarTexto;
  IconData subIcono;
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();

  void visible(){
    if(ocultarTexto == true){
      ocultarTexto = !ocultarTexto;
      subIcono = Icons.visibility_off;
      
    }else{
      ocultarTexto = !ocultarTexto;
      subIcono = Icons.remove_red_eye;
    }
  }

  void validacion(
    TextEditingController userController, 
    TextEditingController passwordController, 
    TextEditingController nameController, 
    TextEditingController phoneController,
    BuildContext context){
    final caracterEspecial = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
    if (nameController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'El nombre no pueden quedar en blanco',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
    if (userController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'El usuario no pueden quedar en blanco',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
    if (passwordController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'La contraseña no pueden quedar en blanco',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
    if (phoneController.text.isEmpty) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'El telefono no pueden quedar en blanco',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
    if (!userController.text.contains('@unah.hn')) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'El usuario debe contener @unah.hn',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
    if (passwordController.text.length < 6) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'La contraseña al menos debe contener 6 caracteres',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
    if(!caracterEspecial.hasMatch(passwordController.text)) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'La contraseña al menos debe contener un caracter especial',
            ),
            actions: [
              TextButton(
                onPressed: () {
                  // Navigator.of(context).pop();
                  context.pop();
                },
                child: Text('Entiendo'),
              ),
            ],
          );
        },
      );
      return;
    }
  context.goNamed(
    'home',
  );
  }
}