import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myporto/porto_page.dart';

import 'home_page.dart';

class HomePageMob extends StatelessWidget {
  const HomePageMob({super.key});

  @override
  Widget build(BuildContext context) {
    final porto = GlobalKey();
    return Scaffold(body: SingleChildScrollView(
      // controller: controller,
      child: Column(
        children: [
                  Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                width: Get.width,
                height: 730,
                color: Colors.grey[400],
                child: Kiri()),
                 Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 70),
                width: Get.width,
                height: 730,
                color: Colors.white,
                child: Kanan(onTap: (){
                  // cont.jumpTo(cont.position.maxScrollExtent);
                  Scrollable.ensureVisible(porto.currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
                },)),
                PortoPageMob(key: porto,)
        ],
      ),
    ),);
  }
}