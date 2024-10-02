import 'package:flutter/material.dart';

class FloatingBubbleButton extends StatefulWidget {
  final String imgurl;
  final String imgname;
  const FloatingBubbleButton(
      {required this.imgurl, required this.imgname, super.key});

  @override
  _FloatingBubbleButtonState createState() => _FloatingBubbleButtonState();
}

class _FloatingBubbleButtonState extends State<FloatingBubbleButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Repeat the animation indefinitely

    _animation = Tween<double>(begin: 0, end: 9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
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
    return Center(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, _animation.value), // Change Y position

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(widget.imgurl),
                  ),
                  // const SizedBox(height: 5),
                  Text(widget.imgname),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
