import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWithGoogle extends StatelessWidget {
  final Color bordercolor;
  final Color bottomcolor;
  final Color textcolor;
  final Function() onPressed;

  final String text;
  final String imageurl;

  const LoginWithGoogle(
      {super.key,
      required this.bordercolor,
      required this.bottomcolor,
      required this.textcolor,
      required this.onPressed,
      required this.text,
      required this.imageurl});

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
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    imageurl,
                    fit: BoxFit.fill,
                  ),
                ),
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
