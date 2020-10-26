import 'package:refransehadabawy/files/exports.dart';

dynamic toastDialog(String title) {
  return Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: bColor,
      textColor: wColor,
      fontSize: 16.0);
}
