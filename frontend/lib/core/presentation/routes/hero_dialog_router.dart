import 'package:flutter/material.dart';

class HeroDialogRouter<T> extends PageRoute<T> {
  HeroDialogRouter({
    required WidgetBuilder builder,
    RouteSettings? settings,
    bool fullscreenDialog = false,
  })  : _builder = builder,
        super(
          settings: settings,
          fullscreenDialog: fullscreenDialog,
        );

  final WidgetBuilder _builder;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return child;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return _builder(context);
  }

  @override
  Color? get barrierColor => Colors.black54;

  @override
  String? get barrierLabel => 'Popup dialog open';

  @override
  bool get barrierDismissible => true;

  @override
  bool get opaque => false;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);
}
