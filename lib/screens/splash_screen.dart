import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../widgets/app_drawer.dart';
import '../widgets/screen_background.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      drawer: const AppDrawer(),
      backgroundColor: AppColors.primary,
      body: ScreenBackground(
        image: 'assets/images/bg_splash.jpg',
        overlay: const Color(0x40000000),
        child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', width: 120, height: 120),
              const SizedBox(height: 20),
              const Text(
                'Bunk Meter',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Know exactly how many classes you can miss',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(height: 24),

              // Feature container
              Container(
                width: 320,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Column(
                  children: [
                    _FeatureRow(icon: Icons.check_circle, text: 'Track attendance for every course'),
                    SizedBox(height: 10),
                    _FeatureRow(icon: Icons.calculate, text: 'See how many classes you can safely miss'),
                    SizedBox(height: 10),
                    _FeatureRow(icon: Icons.alarm, text: 'Never forget a deadline'),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: AppColors.primary,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                ),
                child: const Text('Get Started'),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class _FeatureRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _FeatureRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(width: 10),
        Expanded(
          child: Text(text, style: const TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
