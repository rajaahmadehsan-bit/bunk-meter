import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const BunkMeterApp());
}

class BunkMeterApp extends StatelessWidget {
  const BunkMeterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bunk Meter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        // Makes every AppBar the same color automatically
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),

      // To see each screen, change ONLY this line and hot restart (Shift+R):
      //   SplashScreen(), HomeScreen(), CourseDetailScreen(),
      //   AddCourseScreen(), TodayScreen(), DeadlinesScreen()
      home: const SplashScreen(),
    );
  }
}
