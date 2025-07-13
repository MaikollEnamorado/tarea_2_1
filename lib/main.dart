import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea_2_1/src/views/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: '/home',
        routes: [
          GoRoute(
            name: 'home',
            path: '/home',
            builder: (context, state){
              return const HomePage();
            }
          )
        ]
      ),
      title: 'Material App',
      
    );
  }
}