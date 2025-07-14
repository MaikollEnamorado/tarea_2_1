import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Login {
  Login({required this.ocultarTexto, required this.subIcono});
  bool ocultarTexto;
  IconData subIcono;
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  void visible(){
    if(ocultarTexto == true){
      ocultarTexto = !ocultarTexto;
      subIcono = Icons.visibility_off;
      
    }else{
      ocultarTexto = !ocultarTexto;
      subIcono = Icons.remove_red_eye;
    }
  }
  void registrar(BuildContext context){
    context.goNamed(
    'registration',
  );
  }
  void validacion(
    TextEditingController userController, 
    TextEditingController passwordController,
    List<Map>? usuarios,
    BuildContext context){
    final caracterEspecial = RegExp(r'[!@#$%^&*(),.?":{}|<>]');
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
    if(usuarios != null){    
      for(int i = 0; i < usuarios.length; i++){
          TextEditingController usuario = usuarios[i]['usuario'];
          TextEditingController clave = usuarios[i]['clave'];
          if(usuario.text == userController.text){
            if(clave.text == passwordController.text){
              context.goNamed(
                'home',
              );
              return;
            }else{
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Oops!'),
                    content: Text(
                      'La contraseña es incorrecta',
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
          }
      }
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Oops!'),
            content: Text(
              'El usuario no existe',
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
    }
  }
}