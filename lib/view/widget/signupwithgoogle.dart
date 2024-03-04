import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupWithgoogle extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const SignupWithgoogle(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10),
        margin: EdgeInsets.only(right: 20, left: 20),
        width: MediaQuery.sizeOf(context).width,
        height: 58,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0),
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: MaterialButton(
            onPressed: onPressed,
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    "lib/images/google.png",
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(text,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
              ],
            )));
  }
}
