import 'package:chat_app/utils/dynamic_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// submit button for authantication
Container authSubmitButton(
    {required BuildContext context, required String text}) {
  return Container(
    height: context.screenHeight(6),
    width: context.screenWidth(90),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: const Color(0xff1ee8d8),
    ),
    child: Center(
        child: Text(
      text,
      style: GoogleFonts.openSans(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      ),
    )),
  );
}
