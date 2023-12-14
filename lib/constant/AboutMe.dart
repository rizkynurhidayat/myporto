import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myporto/constant/projectClass.dart';
import 'package:url_launcher/url_launcher.dart';

final String deskripsiAbout =
    "I am student in the informatics study program, Faculty of Engineering and Computer Science, Pancasakti University, Tegal. Familiar with using the Flutter framework, DBMS Firebase, Java and Dart. Aspiring to be part of the Google Indonesia developer team. Likes traveling and listening to music.";

final TextStyle teks = GoogleFonts.openSans();

final Project p1 = Project(
    figmaLink:
        "https://www.figma.com/file/EJcvhr0l3ghEFsfJG7dp7h/Batik-Vision?type=design&node-id=0%3A1&mode=design&t=rFbv3NqpukmDG49X-1",
    title: "Batik Vision",
    fotos: "assets/images/batikvision.png",
    authors: {
      "Authors":["M. Husni Nasuha", "Rizky Nur Hidayat"],
      
      "Deskription": "Batik Vision is an innovative Tegal batik promotional application. This application uses AR technology to display batik motifs realistically and is easy to use. It provides various features such as a large batik collection, a realistic appearance, and easy operation. Batik Vision has the potential to increase promotion of Tegal batik and increase public interest in Tegal batik.",
      
    },
    description:
        "Tegalan Batik Promotion Application based on Augmented Reality (AR) technology using Tiktok filters. This application can help customers find out which batik motif suits their body",
    sourceCodeLink: "https://github.com/rizkynurhidayat/krenova.git");

final Project p2 = Project(
    figmaLink:
        "https://www.figma.com/file/OtPl7pN82LLpk1QvZSjXnJ/Waris-Wireframe---102623?type=design&mode=design&t=hwGNjOyzE9sd7Qdm-1",
    title: "Waris",
    fotos: "assets/images/waris.png",
    authors: {
      "Authors":["Muhammad Iqbal Saputra", "Rehan Bagus Tri Wibowo", "Rizky Nur Hidayat"],
      "Deskription":"Waris is an innovative online social gathering application. This application offers various features that can help users to participate in social gatherings easily, safely and efficiently. It includes various features such as creating social gatherings, depositing social gatherings, shuffling social gatherings, and reminders of social gathering payments, all of which can be done in just one application."
    },
    sourceCodeLink: "https://bitbucket.org/minamiii/waris/src/master/",
    description:
        "Application Virtual Card-based digital social gathering to make it easier for users to manage social gatherings easily And efficient, because various features are available.");

final Project p3 = Project(
    title: "Prayer App",
    fotos: "assets/images/prayer.png",
    description:
        "Application for monitoring daily prayer schedules and providing notification that prayer time has arrived using open api from MyQuran",
    sourceCodeLink: "https://github.com/rizkynurhidayat/jadwal_sholat.git",
    authors: {
      "Authors":["Rizky Nur Hidayat"],
      "Deskription":"The Prayer Schedule application is an important application for Muslims. This application can help users find out prayer schedules easily, accurately and usefully. In this application there is a feature to view prayer time schedules according to the user's area and prayer time reminders. This application has an attractive appearance"
    },
    figmaLink:
        "https://www.figma.com/file/kDcIXNCkn9aFcJZpytwKcS/Prayer-App?type=design&mode=design&t=hwGNjOyzE9sd7Qdm-1");

Future<void> OpenLink(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

var email = Uri(scheme: 'mailto', path: "rizkynurhidayat.iky@gmail.com");
var whatsapp = Uri.parse("https://api.whatsapp.com/send/?phone=6281534922048&text&type=phone_number&app_absent=0");
var instagram = Uri.parse("https://www.instagram.com/rzky828/");
var github = Uri.parse("https://github.com/rizkynurhidayat");
var resume = Uri.parse("https://drive.google.com/file/d/1AeMKhNhdQiKHSkl74lVuPwNbWavhkaTf/view?usp=sharing");
var linkedin = Uri.parse("https://www.linkedin.com/in/rizky-nur-hidayat-552b98214");
