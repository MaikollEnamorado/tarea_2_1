import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key, 
    required this.hintTexto, 
    this.preIcono, 
    this.tipoTeclado,
    this.ocultarTexto
  });

  final String hintTexto;
  final IconData? preIcono;
  final TextInputType? tipoTeclado;
  final bool? ocultarTexto;
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: tipoTeclado,
      obscureText: ocultarTexto ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        hintText: hintTexto,
        prefixIcon: Icon(preIcono),
      ),  
    );
  }
}