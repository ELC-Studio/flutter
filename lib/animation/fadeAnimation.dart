import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AniProps { opacity, translateY }
class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;

  FadeAnimation(this.delay, this.child);
  final _tween = MultiTween<AniProps>()
      // Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      ..add(AniProps.opacity, Tween(begin: 0.0, end: 1.0), Duration(milliseconds: 500))
      ..add(AniProps.translateY, Tween(begin: -30.0, end: 0.0), Duration(milliseconds: 500), Curves.easeOut);
      // Track("translateY").add(
      //   Duration(milliseconds: 500), Tween(begin: -30.0, end: 0.0),
      //   curve: Curves.easeOut)
    // ]);
  @override
  Widget build(BuildContext context) {
    

    return CustomAnimation(
      delay: Duration(milliseconds: (500 * delay).round()),
      duration: _tween.duration,
      tween: _tween,
      child: child,
      builder: (context, child, animation) => Opacity(
        opacity: animation.get(AniProps.opacity),
        child: Transform.translate(
          offset: Offset(0, animation.get(AniProps.translateY)), 
          child: child
        ),
      ),
    );
  }
}