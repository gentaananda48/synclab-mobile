import 'package:flutter/material.dart';
import 'Pages/Auth/login.dart';
import 'Pages/Auth/register.dart';
import 'Pages/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SyncLab',
      theme: ThemeData(
        primaryColor: Colors.blue, // Warna primer biru
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue, // Warna primer biru
          accentColor: Colors.blueAccent, // Warna aksen biru
        ),
        scaffoldBackgroundColor: Colors.white, // Warna latar belakang putih
        appBarTheme: AppBarTheme(
          color: Colors.blue, // Warna app bar biru
        ),
        highlightColor: Colors.blueAccent, // Warna highlight
        splashColor: Colors.blueAccent, // Warna splash
      ),
      // Definisi rute aplikasi
      routes: {
        '/': (context) => DashboardPage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
      initialRoute: '/login',
    );
  }
}
