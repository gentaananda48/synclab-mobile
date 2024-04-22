import 'package:flutter/material.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SyncLab',
      theme: ThemeData.light().copyWith(
        // Tema Terang
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.blueAccent,
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.blue,
        ),
        highlightColor: Colors.blueAccent,
        splashColor: Colors.blueAccent,
      ),
      darkTheme: ThemeData.dark().copyWith(
        // Tema Gelap
        primaryColor: Colors
            .indigo, // Ganti dengan warna primer yang sesuai untuk tema gelap
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors
              .indigo, // Ganti dengan warna primer yang sesuai untuk tema gelap
          accentColor: Colors
              .indigoAccent, // Ganti dengan warna aksen yang sesuai untuk tema gelap
        ),
        scaffoldBackgroundColor: Colors
            .black, // Ganti dengan warna latar belakang yang sesuai untuk tema gelap
        appBarTheme: AppBarTheme(
          color: Colors
              .indigo, // Ganti dengan warna app bar yang sesuai untuk tema gelap
        ),
        highlightColor: Colors
            .indigoAccent, // Ganti dengan warna highlight yang sesuai untuk tema gelap
        splashColor: Colors
            .indigoAccent, // Ganti dengan warna splash yang sesuai untuk tema gelap
      ),
      themeMode: ThemeMode.light,
      routes: appRoutes,
      initialRoute: '/login',
    );
  }
}
