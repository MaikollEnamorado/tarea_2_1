import 'package:flutter/material.dart';
import 'package:tarea_2_1/src/widgets/text_field_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Crea una cuenta',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Es facil y rapido',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                ),
                Divider(),
                TextFieldWidget(
                  hintTexto: 'Ingrese su nombre completo', 
                  preIcono: Icons.person_outlined,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  hintTexto: 'Ingrese su correo electronico', 
                  preIcono: Icons.email_outlined,
                  tipoTeclado: TextInputType.emailAddress,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  hintTexto: 'Ingrese su contraseña', 
                  preIcono: Icons.password_rounded,
                  tipoTeclado: TextInputType.visiblePassword,
                  ocultarTexto: true,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  hintTexto: 'Ingrese su telefono', 
                  preIcono: Icons.phone,
                  tipoTeclado: TextInputType.phone,
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}

