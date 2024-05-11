import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final void Function(int)? onTabTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTabTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              // TODO: Tambahkan logika untuk tombol favorit di sini
            },
          ),
          IconButton(
            icon: const Icon(Icons.image),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/gallery');
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Tambahkan logika untuk tombol pencarian di sini
            },
          ),
        ],
      ),
    );
  }
}
