import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sample/config/config.dart';

class MapsWidget extends StatelessWidget {
  const MapsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LottieFrame(path: data.mapPath);
  }
}

class LottieFrame extends StatelessWidget {
  final String path;
  final double height;
  final double borderRadius;

  const LottieFrame({
    Key? key,
    required this.path,
    this.height = 200,
    this.borderRadius = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClayContainer(
      emboss: true,
      height: height,
      borderRadius: borderRadius,
      color: Theme.of(context).colorScheme.background,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Lottie.asset(
          path,
          frameBuilder: (context, child, composition) {
            return AnimatedOpacity(
              child: child,
              opacity: composition == null ? 0 : 1,
              duration: const Duration(seconds: 5),
              curve: Curves.easeOut,
            );
          },
        ),
      ),
    );
  }
}
