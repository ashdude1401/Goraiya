import 'dart:math';

import 'package:flutter/material.dart';
import 'package:goraiya/constants/assets_constants.dart';
import 'package:goraiya/theme/pallete.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  //Animation

  late final AnimationController _animationController;

  late final Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState

    //Animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
              transform: GradientRotation(pi / 4),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Palette.primaryColor,
                Palette.backgroundColor,
              ]),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.scale(
                      scale: _animation.value * 1.5,
                      child: AnimatedOpacity(
                        opacity: _animation.value,
                        duration: const Duration(seconds: 1),
                        child: Image.asset(
                          AssetsConstants.goraiyaLogoPng,
                          height: size.height * 0.15,
                          width: size.width * 0.15,
                        ),
                      ),
                    );
                  }),
              AnimatedBuilder(
                animation: _animation,
                builder: (context, child) => AnimatedOpacity(
                  opacity: _animation.value,
                  duration: const Duration(seconds: 1),
                  child: Transform.translate(
                      offset: Offset(0, 100 - 100 * _animation.value),
                      child: child),
                ),
                child: Column(
                  children: [
                    Text(
                      'Goraiya',
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    Text(
                      'Chirp with out any limits',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
