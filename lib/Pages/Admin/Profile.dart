import 'package:flutter/material.dart';
import 'Under.dart';
import 'GreatherThan.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      title: 'ID Card',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ID Card',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 600) {
              return GreatherThan();
            } else {
              return Under();
            }
          },
        ),
      ),
    );
  }
}
