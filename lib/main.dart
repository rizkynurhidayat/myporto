import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myporto/home_page_mob.dart';
import 'home_page.dart';

// import 'home_page.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:myporto/widget/tombol.dart';

// import 'constant/AboutMe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)),
      home: FutureBuilder(future: Future.delayed(const Duration(seconds: 3)), builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return const Center(child: CircularProgressIndicator(),);
        }
        if(Get.width >= 700){
          return const HomePage();
        }
        return const HomePageMob();
      })
    );
  }
}
