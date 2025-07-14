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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'Crea una cuenta',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  
                ),
                Text(
                  'Es facil y rapido',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                  child: Divider()),
                TextFieldWidget(
                  controller: registration.nameController,
                  hintTexto: 'Ingrese su nombre completo', 
                  preIcono: Icons.person_outlined,
                ),
                SizedBox(height: 10,),
                TextFieldWidget(
                  controller: registration.userController,
                  hintTexto: 'Ingrese su correo electronico', 
                  preIcono: Icons.email_outlined,
                  tipoTeclado: TextInputType.emailAddress,
                ),
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
                TextFieldWidget(
                  controller: registration.phoneController,
                  hintTexto: 'Ingrese su telefono', 
                  preIcono: Icons.phone,
                  tipoTeclado: TextInputType.phone,
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      registration.validacion(registration.userController, registration.passwordController, registration.nameController, registration.phoneController, context);
                  }, child:  Text('Registrarte')),
                ),
                
                Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: (){
                      registration.login(context);
                  }, child:  Text('¿Ya tienes una cuenta?')),
                ),
                
                SizedBox(height: 10,)
              ],
            ),
          ),
        )
      ),
    );
  }
}

