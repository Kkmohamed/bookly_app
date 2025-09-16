import 'package:flutter/widgets.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animationController,
    required this.slidingAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (BuildContext context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
