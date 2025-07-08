import 'dart:async';
import 'package:flutter/material.dart';
import 'package:learning_management/features/subject/presentation/view/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController);
    _animationController.forward();

    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // network background image
          Image.network(
            'https://png.pngtree.com/thumb_back/fh260/back_our/20190625/ourmid/pngtree-tmall-e-commerce-office-learning-stationery-simple-banner-image_258156.jpg', // Replace with your URL
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.3)),

          // Foreground content
          Center(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'data:image/png;base64,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', // Local logo
                    height: 120,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "LMS App",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
