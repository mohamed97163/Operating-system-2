import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:screen_go/extensions/responsive_nums.dart';

class TextFormFieldAuthPage extends StatelessWidget {
  final String hinttext;
  final Function()? onpressed;
  final IconData? icon;
  final bool hiddentext;
  final Color? coloricon;

  final TextEditingController? controller;

  final String? Function(String?) validator;

  const TextFormFieldAuthPage({
    super.key,
    required this.hinttext,
    required this.hiddentext,
    this.controller,
    required this.validator,
    this.onpressed,
    this.icon,
    this.coloricon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Color.fromRGBO(221, 221, 221, 1))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Color.fromRGBO(221, 221, 221, 1))),
          hintStyle: GoogleFonts.inter(
            textStyle: TextStyle(
                color: Color.fromRGBO(221, 221, 221, 1),
                fontSize: 3.5.w,
                fontWeight: FontWeight.w500),
          ),
          contentPadding: EdgeInsets.all(4.w),
          hintText: hinttext,
          suffixIcon: IconButton(
            onPressed: onpressed,
            icon: Icon(icon),
          ),
          suffixIconColor: coloricon),
      controller: controller,
      maxLines: 1,
      obscureText: hiddentext,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Colors.black
              .withOpacity(.7), // هيبقي متغير عتغير لو ضغطت خارج الحقل
          fontSize: 3.5.w,
          fontWeight: FontWeight.w500,
        ),
      ),
      validator: validator,
    );
  }
}
