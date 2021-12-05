import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:loginflutter/getx/obx1.dart';

import 'google/google_oauth.dart';

void main() async {
  runApp(
    GetMaterialApp(title: 'Belajar Flutter', home: Home()),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar FLutter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          card(
            title: 'Google Sign In',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInDemo(),
                ),
              );
            },
          ),
          card(
            title: 'Obx Sederhana',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Obx1(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Widget card({required String title, Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.blue,
      ),
      child: Center(
        child: Text(title),
      ),
    ),
  );
}
