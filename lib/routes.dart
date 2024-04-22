import 'package:flutter/material.dart';
import 'Pages/Auth/Login.dart';
import 'Pages/Auth/Register.dart';
import 'Pages/Dashboard.dart';

// Definisikan rute aplikasi
Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => DashboardPage(),
  '/login': (context) => LoginPage(),
  '/register': (context) => RegisterPage(),
};
