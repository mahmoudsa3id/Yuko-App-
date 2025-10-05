import 'package:flutter/material.dart';
import 'dart:async';

// استبدل HomePage بصفحتك الأساسية
import 'package:yoku/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  String fullText = "Powered by Mahmoud Said";
  String displayedText = "";
  int charIndex = 0;

  @override
  void initState() {
    super.initState();

    // أنيميشن الكنترولر
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();

    // Typewriter effect للأسم
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (charIndex < fullText.length) {
        setState(() {
          displayedText += fullText[charIndex];
          charIndex++;
        });
      } else {
        timer.cancel();
      }
    });

    // الانتقال للهوم بعد 5 ثواني
    Timer(const Duration(seconds: 6), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (_) => const HomePage()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ScaleTransition(
            scale: _scaleAnimation,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/logo.png', width: 180, height: 180),
                const SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/logo.png', // اللوجو الصغير
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      displayedText,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DenkOne',
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
