import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtomAuthPage extends StatelessWidget {
  final String text;
  final Color colorbottom;
  final Color colortext;
  final Color bordercolor;
  final double fontsize;
  final Function() onPressed;
  const ButtomAuthPage(
      {super.key,
      required this.text,
      required this.colorbottom,
      required this.colortext,
      required this.bordercolor,
      required this.fontsize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 58,
        decoration: BoxDecoration(
            border: Border.all(color: bordercolor),
            color: colorbottom,
            borderRadius: BorderRadius.circular(30)),
        child: MaterialButton(
            onPressed: onPressed,
            child: Text(text,
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                      color: colortext,
                      fontSize: fontsize,
                      fontWeight: FontWeight.w400),
                ))));
  }
}
