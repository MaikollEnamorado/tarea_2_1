import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    super.key, 
    required this.hintTexto, 
    this.preIcono, 
    this.tipoTeclado,
    this.subIcono,
    this.click,
    this.ocultarTexto,
    this.controller,
  });

  final String hintTexto;
  final IconData? preIcono;
  final IconData? subIcono;
  final TextInputType? tipoTeclado;
  final VoidCallback? click;
  final bool? ocultarTexto;
  final TextEditingController? controller;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.tipoTeclado,
      obscureText: widget.ocultarTexto ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        
        hintText: widget.hintTexto,
        prefixIcon: Icon(widget.preIcono),
        suffixIcon: IconButton(
          icon: Icon(widget.subIcono),
          onPressed: widget.click, 
        )
      ),  
    );
  }
}