import 'package:refransehadabawy/files/exports.dart';

Widget hadFild(
    {titleColor,
    controller,
    backColor,
    fBorderColor,
    eBorderColor,
    type,
    lable,
    hint,
    suffixIcon,
    prefixIcon}) {
  return TextField(
    controller: controller,
    textAlign: TextAlign.left,
    decoration: InputDecoration(
      hintText: hint,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      suffixStyle: GoogleFonts.lato(
        color: titleColor.withOpacity(0.3) ?? wColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
      ),
      hintStyle: GoogleFonts.lato(
        color: titleColor.withOpacity(0.3) ?? wColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
      ),
      labelText: lable,
      labelStyle: GoogleFonts.lato(
        color: titleColor ?? wColor,
        fontSize: 15,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
      ),
      contentPadding: EdgeInsets.all(20),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: backColor ?? bColor, width: 1),
          borderRadius: BorderRadius.circular(25)),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: backColor ?? bColor, width: 1),
          borderRadius: BorderRadius.circular(25)),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 1),
          borderRadius: BorderRadius.circular(25)),
    ),
    style: GoogleFonts.lato(
      color: titleColor ?? wColor,
      fontSize: 15,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic,
    ),
  );
}
