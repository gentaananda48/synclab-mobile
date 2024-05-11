import 'package:flutter/material.dart';
import '../Components/CustomBottomNavBar.dart';
import '../Components/MainDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0; // Variabel untuk menyimpan jumlah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white)),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to SyncLab!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk aksi
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.adb_outlined),
                  SizedBox(width: 8),
                  Text('Tombol Useless'),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0, // Sesuaikan dengan indeks halaman ini di bottom nav
        onTabTapped: (index) {
          // Tambahkan logika untuk perubahan halaman bottom nav di sini
        },
      ),
    );
  }
}
