import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant/AboutMe.dart';
import 'constant/projectClass.dart';
import 'widget/tombol.dart';

class BlankPage extends GetView {
  BlankPage({super.key, required this.p});
  final Project p;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(p.title),
        ),
        body: (Get.width > 700)
        //Desktop view
            ? Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: Get.width / 2 - 100,
                      child: Image.asset(
                        p.fotos,
                        width: 450,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: Get.width / 2 - 100,
                      // child: Text(
                      //   p.authors['Deskription'],
                      //   style: GoogleFonts.openSans(fontSize: 20),
                      // ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            p.title,
                            style: GoogleFonts.openSans(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            p.authors['Deskription'],
                            style: GoogleFonts.openSans(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Developer:",
                            style: GoogleFonts.openSans(fontSize: 20),
                          ),
                          Column(
                            children: List.generate(
                                p.authors['Authors'].length,
                                (index) => ListTile(
                                      title: Text(p.authors['Authors'][index]),
                                      leading: Icon(Icons.circle_rounded),
                                    )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              tombol(
                                  title: "Figma",
                                  fontsize: 14,
                                  onTap: () {
                                    OpenLink(Uri.parse(p.figmaLink));
                                  },
                                  width: 150),
                              const SizedBox(
                                width: 10,
                              ),
                              tombol(
                                  title: "Repo",
                                  fontsize: 14,
                                  onTap: () {
                                    OpenLink(Uri.parse(p.sourceCodeLink));
                                  },
                                  width: 150),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
              ///mobile view
            : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                child: Column(
                  children: [
                     SizedBox(
                      width: Get.width,
                      child: Image.asset(
                        p.fotos,
                       
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: Get.width,
                      // child: Text(
                      //   p.authors['Deskription'],
                      //   style: GoogleFonts.openSans(fontSize: 20),
                      // ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            p.title,
                            style: GoogleFonts.openSans(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            p.authors['Deskription'],
                            style: GoogleFonts.openSans(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Developer:",
                            style: GoogleFonts.openSans(fontSize: 20),
                          ),
                          Column(
                            children: List.generate(
                                p.authors['Authors'].length,
                                (index) => ListTile(
                                      title: Text(p.authors['Authors'][index]),
                                      leading: Icon(Icons.circle_rounded),
                                    )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          tombol(
                              title: "Figma",
                              fontsize: 14,
                              onTap: () {
                                OpenLink(Uri.parse(p.figmaLink));
                              },
                              width: Get.width),
                          const SizedBox(
                            height: 10,
                          ),
                          tombol(
                              title: "Repo",
                              fontsize: 14,
                              onTap: () {
                                OpenLink(Uri.parse(p.sourceCodeLink));
                              },
                              width: Get.width)
                        ],
                      ),
                    ),
                  ],
                ),
              ));
  }
}
