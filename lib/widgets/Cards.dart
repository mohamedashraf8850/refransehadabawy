import 'package:refransehadabawy/files/exports.dart';

Widget hadCard({bacColor, widget, shaColor}) {
  return Card(
    color: bacColor ?? yColor,
    elevation: 8,
    child: widget,
    shape: RoundedRectangleBorder(
      side: BorderSide(color: bacColor ?? yColor, width: 1),
      borderRadius: BorderRadius.circular(25),
    ),
    borderOnForeground: true,
    clipBehavior: Clip.hardEdge,
    shadowColor: shaColor,
  );
}
