import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Obx1 extends StatelessWidget {
  Obx1({Key? key}) : super(key: key);

  var angka = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Center(
        child: Obx(() => Text('Angka $angka')),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        angka++;
      }),
    );
  }
}
