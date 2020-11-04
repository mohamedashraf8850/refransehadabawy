import 'package:refransehadabawy/files/exports.dart';

Widget hadFild(
    {titleColor,
    key,
    startspass,
    controller,
    backColor,
    fBorderColor,
    eBorderColor,
    autovalidateMode,
    type,
    lable,
    hint,
    enabled,
    validator,
    suffixIcon,
    prefixIcon,
    summit}) {
  return Form(
    autovalidateMode: autovalidateMode == true
        ? AutovalidateMode.onUserInteraction
        : AutovalidateMode.disabled,
    key: key,
    child: TextFormField(
      keyboardType: type ?? TextInputType.text,
      obscureText: startspass ?? false,
      controller: controller,
      validator: validator,
      onEditingComplete: summit,
      readOnly: !enabled ?? false,
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
    ),
  );
}
