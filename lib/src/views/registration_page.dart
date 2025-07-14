import 'package:flutter/material.dart';
import 'package:tarea_2_1/src/widgets/text_field_widget.dart';
import 'package:tarea_2_1/src/utils/registration.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  Registration registration = Registration(ocultarTexto: true, subIcono: Icons.remove_red_eye);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 15,),
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
                  controller: registration.nameController,
                  hintTexto: 'Ingrese su nombre completo', 
                  preIcono: Icons.person_outlined,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  controller: registration.userController,
                  hintTexto: 'Ingrese su correo electronico', 
                  preIcono: Icons.email_outlined,
                  tipoTeclado: TextInputType.emailAddress,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  controller: registration.passwordController,
                  hintTexto: 'Ingrese su contraseña', 
                  ocultarTexto: registration.ocultarTexto,
                  preIcono: Icons.password_rounded,
                  subIcono: registration.subIcono,
                  tipoTeclado: TextInputType.visiblePassword,
                  click: () {
                    setState(() {});
                    registration.visible();
                  },
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  controller: registration.phoneController,
                  hintTexto: 'Ingrese su telefono', 
                  preIcono: Icons.phone,
                  tipoTeclado: TextInputType.phone,
                ),
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      registration.validacion(registration.userController, registration.passwordController, registration.nameController, registration.phoneController, context);
                  }, child:  Text('Registrarte')),
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
        )
      ),
    );
  }
}

