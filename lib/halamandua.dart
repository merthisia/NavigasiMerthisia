import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_4/main.dart';

class MyWidget extends StatelessWidget {
  final String parameter;
  final String parameter2;
  const MyWidget({super.key, required this.parameter, required this.parameter2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman 2"),
      ),
      body: Column(
        children: [
          Text("Login berhasil"),
          Text(this.parameter),
          ElevatedButton(
            child: Text("Kembali"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          ElevatedButton(
            child: Text("Logout"),
            onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}