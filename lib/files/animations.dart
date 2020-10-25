import 'package:refransehadabawy/files/exports.dart';

class AnimationPage extends PageRouteBuilder {
  final Widget widget;
  AnimationPage({this.widget})
      : super(
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.elasticIn);
              return ScaleTransition(
                scale: animation,
                child: child,
                alignment: Alignment.center,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            });
}
