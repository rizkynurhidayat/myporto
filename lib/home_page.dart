import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myporto/porto_page.dart';

import 'blank.dart';
import 'widget/tombol.dart';
import 'constant/AboutMe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     final porto = GlobalKey();
    return Scaffold(
      body: ListView(children: [
        Row(
          children: [
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 70),
                width: Get.width / 2,
                height: Get.height,
                color: Colors.grey[400],
                child: Kiri()),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 70),
                width: Get.width / 2,
                height: Get.height,
                color: Colors.white,
                child: Kanan(onTap: (){
                  // cont.jumpTo(cont.position.maxScrollExtent);
                  Scrollable.ensureVisible(porto.currentContext!, duration: Duration(seconds: 1), curve: Curves.easeIn);
                },)),
          ],
        ),
        PortoPage(key: porto,)
      ]),
    );
  }
}

class Kiri extends StatelessWidget {
  const Kiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 292,
          height: 292,
          color: Colors.grey,
          child: Image.asset(
            "assets/images/foto.png",
            fit: BoxFit.cover,
          ),
        ),
        const Spacer(flex: 1),
        Text(
          "Rizky Nur Hidayat",
          style:
              GoogleFonts.openSans(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        const Spacer(flex: 1),
        Text(
          "Mobile App Developer",
          style: GoogleFonts.openSans(
            fontSize: 20,
          ),
        ),
        const Spacer(flex: 2),
        tombol(
            onTap: () {
              OpenLink(email);
            },
            title: "Email Me",
            fontsize: 14,
            width: Get.width / 2 - 50),
        const Spacer(flex: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  // Get.to(BlankPage());
                  OpenLink(instagram);
                },
                child: Image.asset(
                  "assets/images/ig.png",
                  height: 34,
                  width: 34,
                )),
            TextButton(
                onPressed: () {
                  // Get.to(BlankPage());
                  OpenLink(whatsapp);
                },
                // style: const ButtonStyle(
                //     surfaceTintColor: MaterialStatePropertyAll(Colors.white)),
                child:
                    Image.asset("assets/images/wa.png", height: 34, width: 34)),
            TextButton(
                onPressed: () {
                  // Get.to(BlankPage());
                  OpenLink(github);
                },
                child: Image.asset("assets/images/github.png",
                    height: 34, width: 34)),
            TextButton(
                onPressed: () {
                  // Get.to(BlankPage());
                  OpenLink(linkedin);
                },
                child: Image.asset("assets/images/linkedin.png",
                    height: 34, width: 34)),
          ],
        )
      ],
    );
  }
}

class Kanan extends StatelessWidget {
  const Kanan({super.key, this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Me",
          style: teks.copyWith(fontSize: 62, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: Get.width / 2 - 100,
          child: Text(
            deskripsiAbout,
            style: teks.copyWith(fontSize: 18),
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tombol(
                title: "Resume",
                fontsize: 12,
                onTap: () {
                  OpenLink(resume);
                },
                width: Get.width / 4 - 100),
            tombol(
                title: "Portofolio",
                fontsize: 12,
                onTap: onTap,
                width: Get.width / 4 - 100),
          ],
        )
      ],
    );
  }
}
