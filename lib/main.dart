import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_2_1/src/views/home_page.dart';
import 'package:tarea_2_1/src/views/login_page.dart';
import 'package:tarea_2_1/src/views/registration_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/login',
        routes: [
          GoRoute(
            name: 'home',
            path: '/home',
            builder: (context, state){
              return const HomePage();
            }
          ),
          GoRoute(
            name: 'registration',
            path: '/registration',
            builder: (context, state){
              return const RegistrationPage();
            }
          ),
          GoRoute(
            name: 'login',
            path: '/login',
            builder: (context, state){
              return const LoginPage();
            }
          )
        ]
      ),
      title: 'Material App',
      
    );
  }
}