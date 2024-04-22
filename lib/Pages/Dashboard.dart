import 'package:flutter/material.dart';
import 'MainDrawer.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int counter = 0; // Variabel untuk menyimpan jumlah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
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
                // Tambahkan logika untuk aksi di dashboard
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
            Text(
              'Number: $counter',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Ga tau mau diapain ni tombol',
        onPressed: () {},
        child: const Icon(Icons.home, size: 28),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (counter > 0) {
                        counter--;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  icon: const Icon(Icons.add))
            ],
          )),
    );
  }
}
