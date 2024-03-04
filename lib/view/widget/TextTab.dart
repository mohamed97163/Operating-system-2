import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextTap extends StatelessWidget {
  final Color color;
  final double fontsize;
  final FontWeight fontweight;
  final String text;
  final Function() onTap;
  const TextTap({super.key, required this.color, required this.fontsize, required this.fontweight, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(text,
          style: GoogleFonts.inter(
              textStyle: TextStyle(
                  fontSize: fontsize, color: color, fontWeight: fontweight))),
    );
  }
}
