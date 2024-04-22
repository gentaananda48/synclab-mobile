import 'package:flutter/material.dart';
import 'Pages/Auth/login.dart';
import 'Pages/Auth/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SyncLab M',
      // Definisi rute aplikasi
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
      initialRoute: '/login', // Rute awal aplikasi
    );
  }
}
