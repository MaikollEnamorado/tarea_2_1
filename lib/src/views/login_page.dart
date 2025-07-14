import 'package:flutter/material.dart';
import 'package:tarea_2_1/src/widgets/text_field_widget.dart';
import 'package:tarea_2_1/src/utils/login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.usuarios});

  final List<Map>? usuarios;
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  Login login = Login(ocultarTexto: true, subIcono: Icons.remove_red_eye);
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
                Spacer(),
                Text(
                  'Iniciar sesión',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30,),
                TextFieldWidget(
                  controller: login.userController,
                  hintTexto: 'Ingrese su correo electronico', 
                  preIcono: Icons.email_outlined,
                  tipoTeclado: TextInputType.emailAddress,
                ),
                SizedBox(height: 15,),
                TextFieldWidget(
                  controller: login.passwordController,
                  hintTexto: 'Ingrese su contraseña', 
                  ocultarTexto: login.ocultarTexto,
                  preIcono: Icons.password_rounded,
                  subIcono: login.subIcono,
                  tipoTeclado: TextInputType.visiblePassword,
                  click: () {
                    setState(() {});
                    login.visible();
                  },
                ),
                SizedBox(height: 15,),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      login.validacion(login.userController, login.passwordController, widget.usuarios, context);

                  }, child:  Text('Iniciar sesión')),
                ),
                SizedBox(
                  height: 40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text('O',),
                        ),
                      Expanded(child: Divider())
                    ],
                  ),),
                  Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      login.registrar(context);
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