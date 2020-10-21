import 'package:refransehadabawy/files/exports.dart';

Widget hadText({title, titleColor, double size}) {
  return Text(
    title,
    style: GoogleFonts.lato(
      color: titleColor ?? wColor,
      fontSize: size ?? 15,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
    ),
  );
}
