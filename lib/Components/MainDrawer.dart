import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  final VoidCallback? onLogout;

  const MainDrawer({
    Key? key,
    this.onLogout,
  }) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool isDarkMode = false; // Penanda untuk tema gelap

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // TODO: fix Profile page
              // Navigator.pushNamed(context, '/profile');
            },
            child: UserAccountsDrawerHeader(
              // Masih Static
              accountName: Text("Genta Ananda R"),
              accountEmail: Text("gentaanandarakhsy@student.unsia.ac.id"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/self.jpeg"),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          // TODO: Add feature darkmode
          // Divider(),
          // SwitchListTile(
          //   title: Text('Dark Mode'),
          //   value: isDarkMode,
          //   onChanged: (value) {
          //     setState(() {
          //       isDarkMode = value; // Perbarui nilai isDarkMode
          //       // Terapkan tema sesuai dengan mode yang dipilih
          //       if (isDarkMode) {
          //         // Tema gelap
          //         // Logika untuk menerapkan tema gelap
          //       } else {
          //         // Tema terang (default)
          //         // Logika untuk menerapkan tema terang (default)
          //       }
          //     });
          //   },
          // ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Konfirmasi Logout',
                        style: TextStyle(color: Colors.black)),
                    content: Text('Apakah anda yakin ingin keluar?',
                        style: TextStyle(color: Colors.black)),
                    backgroundColor: Colors.white,
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Batal',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        child: Text(
                          'Logout',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
