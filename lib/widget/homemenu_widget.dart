import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMenuWidget extends StatelessWidget {
  final Color primaryClr;
  final Color accentClr;
  final String title;
  final String subtitle;
  final String imgUrl;
  const HomeMenuWidget(
      {required this.primaryClr,
      required this.accentClr,
      required this.title,
      required this.subtitle,
      required this.imgUrl,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: accentClr),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.width * 0.18,
            image: AssetImage(imgUrl),
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, fontSize: 18, color: primaryClr),
          ),
          Text(
            subtitle,
            style: GoogleFonts.poppins(fontSize: 12, color: Colors.black),
          )
        ],
      ),
    );
  }
}
