import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SigninWithfacebook extends StatelessWidget {
  final Color bordercolor;
  final Color bottomcolor;
  final Color textcolor;
  final Function() onPressed;
  final Color coloricon;

  final String text;

  const SigninWithfacebook(
      {super.key,
      required this.bordercolor,
      required this.bottomcolor,
      required this.textcolor,
      required this.onPressed,
      required this.text,
      required this.coloricon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(right: 20, left: 20),
        width: MediaQuery.sizeOf(context).width,
        height: 58,
        decoration: BoxDecoration(
            border: Border.all(color: bordercolor),
            color: bottomcolor,
            borderRadius: BorderRadius.circular(15)),
        child: MaterialButton(
            onPressed: onPressed,
            child: Row(
              children: [
                Icon(Icons.facebook_outlined, size: 30, color: coloricon),
                SizedBox(
                  width: 20,
                ),
                Text(text,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: textcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            )));
  }
}
