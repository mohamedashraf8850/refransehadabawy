import 'package:refransehadabawy/files/exports.dart';

Widget hadButton({
  action,
  title,
  titleColor,
  bacColor,
  double fontSize
}) {
  return FlatButton(
      onPressed: action ??
          () {
            print('No Data');
          },
      shape: RoundedRectangleBorder(
        side: BorderSide(color: bacColor ?? yColor, width: 1),
        borderRadius: BorderRadius.circular(25),
      ),
      color: bacColor ?? yColor,
      child: Text(
        title ?? '',
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: titleColor ?? bColor,
          fontSize: fontSize??25,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),
      ));
}
