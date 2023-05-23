import 'package:flutter/material.dart';
import 'package:flutter_application_4/halamandua.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var judul = "Halaman login";
  var body = "Ini isi body";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Drawer Header'),
      ),
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.adjust),
              title: Text("Peminjaman"),
              onTap: (){
                Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "A",
              parameter2: "B",
            ),
          ),
        );
              },
            ),
            ListTile(
              title: Text("Pengembalian"),
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text(judul)),
      floatingActionButton: FloatingActionButton(onPressed: (){
        /*setState(() {
          judul = "Ini judul yang berubah";
          body = "Ini adalah body yang berubah";
        });*/

        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const MyWidget(
              parameter: "A",
              parameter2: "B",
            ),
          ),
        );
      }),
      body: Text(body),
    );
  }
}