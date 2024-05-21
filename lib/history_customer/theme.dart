import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ThemesTemplate {}

const Color clrOne = Color(0xFFa4a6ce);
const Color clrTwo = Color(0xFFeb908e);
const Color clrThree = Color(0xFFf0b0a0);
const Color clrFour = Color(0xFF5b6499);
const Color clrJeje = Color(0XFF1F2544);

TextStyle get txtMainHead {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 50,
      color: Colors.white,
      fontWeight: FontWeight.bold);
}
Decoration get taphistoryDecor {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black),
      color: Color(0XFFEFF396));
}
TextStyle get txtMainHeadBlack {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 50,
      color: Colors.black,
      fontWeight: FontWeight.bold);
}

TextStyle get txtHeading {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 26,
  );
}

TextStyle get txtsubHeading {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 20,
  );
}

Decoration get tapboxdecor {
  return BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 3,
          offset: const Offset(6, 5), // Posisi bayangan (horizontal, vertikal)
        ),
      ],
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.black),
      color: Colors.white);
}

TextStyle get txtsmall {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12,
    color: Colors.black,
  );
}

TextStyle get txtJejeMain {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 24,
    color: Colors.white,
  );
}

TextStyle get txtJejeMainBlack {
  return TextStyle(
      fontFamily: GoogleFonts.poppins().fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.bold);
}

TextStyle get txtJejeSubhead {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 14,
    color: clrJeje,
  );
}

TextStyle get txtJejelittle {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12,
    color: Colors.white,
  );
}
TextStyle get txtJejelittleblue {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 12,
    color: const Color(0xFF50C4ED),
  );
}

TextStyle get txtJejeHead {
  return TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: clrJeje,
  );
}
