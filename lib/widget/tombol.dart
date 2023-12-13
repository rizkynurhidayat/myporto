import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class tombol extends StatelessWidget {
  tombol(
      {super.key,
      required this.title,
      required this.fontsize,
      required this.onTap,
      required this.width});
  final String title;
  final double fontsize;
  final double width;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title,
        style: GoogleFonts.openSans(
            fontSize: fontsize, fontWeight: FontWeight.bold),
      ),
      style: ButtonStyle(
          elevation: MaterialStatePropertyAll(0),
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade900),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          fixedSize: MaterialStatePropertyAll(Size(width, 40))),
    );
  }
}
