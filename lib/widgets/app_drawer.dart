import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../screens/splash_screen.dart';
import '../screens/home_screen.dart';
import '../screens/course_detail_screen.dart';
import '../screens/add_course_screen.dart';
import '../screens/today_screen.dart';
import '../screens/deadlines_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // Closes the drawer, then replaces the current screen with the chosen one
  void _go(BuildContext context, Widget screen) {
    Navigator.pop(context);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  Widget _item(BuildContext context, IconData icon, String title, Widget screen) {
    return ListTile(
      leading: Icon(icon, color: AppColors.primary),
      title: Text(title),
      onTap: () => _go(context, screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: AppColors.primary),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/logo.png', height: 56),
                const SizedBox(height: 8),
                const Text(
                  'Bunk Meter',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Raja Ahmad Ehsan',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
          _item(context, Icons.hourglass_top, 'Splash', const SplashScreen()),
          _item(context, Icons.home, 'My Courses', const HomeScreen()),
          _item(context, Icons.analytics, 'Course Detail', const CourseDetailScreen()),
          _item(context, Icons.add_circle, 'Add Course', const AddCourseScreen()),
          _item(context, Icons.fact_check, "Today's Classes", const TodayScreen()),
          _item(context, Icons.alarm, 'Deadlines', const DeadlinesScreen()),
        ],
      ),
    );
  }
}
