import 'package:flutter/material.dart';
import 'Pages/Gallery/Gallery.dart';
import 'Pages/Auth/Login.dart';
import 'Pages/Auth/Register.dart';
import 'Pages/Home.dart';
import 'Pages/Admin/Profile.dart';

// Apps Route Define
Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomePage(),
  '/login': (context) => LoginPage(),
  '/register': (context) => RegisterPage(),
  '/profile': (context) => Profile(),
  '/gallery': (context) => GalleryPage(),
};
