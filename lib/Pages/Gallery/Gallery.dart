import 'package:flutter/material.dart';
import 'package:sync_lab_mobile/Pages/Gallery/FormInput.dart';
import '../../Components/CustomBottomNavBar.dart';
import '../../Components/MainDrawer.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  int counter = 0; // Variabel untuk menyimpan jumlah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery', style: TextStyle(color: Colors.white)),
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
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FormInput()));
        },
        tooltip: 'Add item',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Atur lokasi floating action button di sudut kanan bawah
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: 0, // Sesuaikan dengan indeks halaman ini di bottom nav
        onTabTapped: (index) {
          // Tambahkan logika untuk perubahan halaman bottom nav di sini
        },
      ),
    );
  }
}
