import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myporto/blank.dart';
// import 'package:myporto/constant/projectClass.dart';
// import 'package:myporto/widget/tombol.dart';

import 'constant/AboutMe.dart';
import 'widget/projectWidget.dart';

class PortoPage extends StatelessWidget {
  const PortoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 50),
      width: Get.width,
      height: Get.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "portofolio",
            style: teks.copyWith(
              fontSize: 18,
            ),
          ),
          Text(
            "Project",
            style: teks.copyWith(fontSize: 52, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectWidget(
                  p: p1,
                  onTap: () {
                    Get.to(() => BlankPage());
                  },
                ),
                const SizedBox(width: 20,),
                ProjectWidget(
                  p: p2,
                  onTap: () {
                    Get.to(() => BlankPage());
                  },
                ),
                const SizedBox(width: 20,),
                ProjectWidget(
                  p: p3,
                  onTap: () {
                    Get.to(() => BlankPage());
                  },
                ),
                // const SizedBox(width: 20,),
                // ProjectWidget(
                //   p: p3,
                //   onTap: () {
                //     Get.to(() => BlankPage());
                //   },
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
