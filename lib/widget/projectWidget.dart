import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/AboutMe.dart';
import '../constant/projectClass.dart';
import 'tombol.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key, required this.p, required this.onTap});

  final Project p;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        highlightColor: Colors.grey.shade200,
        splashColor: Colors.grey,
        onTap: onTap,
        child: Container(
          width: (Get.width > 700) ? Get.width / 3 - 80 : Get.width - 80,
          height: (Get.width>700)?423:550,
          padding: EdgeInsets.symmetric(horizontal: 10),
          // margin:EdgeInsets.symmetric(horizontal: 20) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(p.fotos),
              Text(
                p.title,
                style: teks.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              SizedBox(
                height: 80,
                child: Text(
                  p.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                ),
              ),
              // tombol(
              //     title: "Lihat Detail",
              //     fontsize: 14,
              //     onTap: onTap,
              //     width: Get.width / 4),
              (Get.width > 700)
                  ? Row(
                      children: [
                        tombol(
                            title: "Figma",
                            fontsize: 14,
                            onTap: () {
                              OpenLink(Uri.parse(p.figmaLink));
                            },
                            width: (Get.width / 5) - 100),
                        const SizedBox(
                          width: 10,
                        ),
                        tombol(
                            title: "Repo",
                            fontsize: 14,
                            onTap: () {
                              OpenLink(Uri.parse(p.sourceCodeLink));
                            },
                            width: (Get.width / 5) - 100),
                      ],
                    )
                  : Column(
                      children: [
                        tombol(
                            title: "Figma",
                            fontsize: 14,
                            onTap: () {
                              OpenLink(Uri.parse(p.figmaLink));
                            },
                            width: Get.width),
                        const SizedBox(
                          height: 20,
                        ),
                        tombol(
                            title: "Repo",
                            fontsize: 14,
                            onTap: () {
                              OpenLink(Uri.parse(p.sourceCodeLink));
                            },
                            width: Get.width),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }
}
