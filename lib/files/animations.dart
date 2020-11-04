import 'package:refransehadabawy/files/exports.dart';

class AnimationPage extends PageRouteBuilder {
  final Widget widget;
  final Curve aniType;
  bool opaque;
  AnimationPage({this.widget, this.aniType,this.opaque=true})
      : super(
            transitionDuration: Duration(seconds: 2),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              animation = CurvedAnimation(
                  parent: animation, curve: aniType ?? Curves.elasticIn);
              return ScaleTransition(
                scale: animation,
                child: child,
                alignment: Alignment.center,
              );
            },
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation, {opaque}) {
              return widget;
            });
}
