import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BlankPage extends GetView {
  const BlankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Halaman Kosong !!!"),
      ),
    );
  }
}
