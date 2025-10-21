

import 'package:flutter/material.dart';

class BeepAnim extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const BeepAnim({super.key, required this.child, this.duration = const Duration(seconds: 3)});

  @override
  State<BeepAnim> createState() => _BeepAnimState();
}

class _BeepAnimState extends State<BeepAnim> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: -10.0, end: 2.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticIn,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(_animation.value, 0),
          child: child,
        );
      },
    );
  }
}
