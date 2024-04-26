import 'dart:ui';

import 'package:flutter/material.dart';

class FrostedContainer extends StatelessWidget {
  final Widget childW;
  final double height;
  final double width;
  
  final void Function()? onPressed;

  const FrostedContainer({
    super.key,
    this.height = 150,
    this.width = 200,
    required this.childW,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: SizedBox(
                height: height,
                width: width,
                child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                          )
                        ],
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.5),
                            Colors.white.withOpacity(0.2)
                          ],
                          stops: const [0.0, 1.0],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: childW,
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
