import 'package:refransehadabawy/files/exports.dart';

Widget asImage({souce, color, fit, height, width}) {
  return Image.asset(
    souce,
    color: color ?? null,
    fit: fit,
    height: height,
    width: width,
  );
}

Widget netImage({souce, color, fit, height, width}) {
  return Image.network(
    souce,
    color: color ?? null,
    fit: fit,
    height: height,
    width: width,
  );
}

Widget fileImage({souce, color, fit, height, width}) {
  return Image.file(
    souce,
    color: color ?? null,
    fit: fit,
    height: height,
    width: width,
  );
}
