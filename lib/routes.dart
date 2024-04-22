import 'package:flutter/material.dart';
import 'Pages/Auth/login.dart';
import 'Pages/Auth/register.dart';
import 'Pages/dashboard.dart';

// Definisikan rute aplikasi
Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => DashboardPage(),
  '/login': (context) => LoginPage(),
  '/register': (context) => RegisterPage(),
};
