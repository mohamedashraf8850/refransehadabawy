import 'package:refransehadabawy/files/exports.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bColor,
      child: Center(
        child: SpinKitChasingDots(
          color: yColor,
          size: 50.0,
        ),
      ),
    );
  }
}
