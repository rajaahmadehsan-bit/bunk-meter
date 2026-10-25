import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../widgets/app_drawer.dart';
import '../widgets/screen_background.dart';

class DeadlinesScreen extends StatelessWidget {
  const DeadlinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deadlines')),
      drawer: const AppDrawer(),
      body: ScreenBackground(
        image: 'assets/images/bg_deadlines.jpg',
        child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFEBEE),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.red),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.alarm, color: AppColors.red),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text('Next deadline: Assignment 2: Project UI is due in 2 days.'),
                    ),
                  ],
                ),
              ),
              const _DeadlineCard(
                icon: Icons.assignment,
                title: 'Assignment 2: Project UI',
                course: 'Mobile App Development',
                due: 'In 2 days',
                color: AppColors.red,
              ),
              const _DeadlineCard(
                icon: Icons.quiz,
                title: 'Quiz 1: SQL Basics',
                course: 'Database Systems',
                due: 'In 5 days',
                color: AppColors.amber,
              ),
              const _DeadlineCard(
                icon: Icons.menu_book,
                title: 'Midterm Exam',
                course: 'Data Structures',
                due: 'In 12 days',
                color: AppColors.green,
              ),
              const _DeadlineCard(
                icon: Icons.assignment,
                title: 'SRS Document',
                course: 'Software Engineering',
                due: 'In 15 days',
                color: AppColors.green,
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class _DeadlineCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String course;
  final String due;
  final Color color;

  const _DeadlineCard({
    required this.icon,
    required this.title,
    required this.course,
    required this.due,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(icon, color: color, size: 32),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(course),
        trailing: Text(due,
            style: TextStyle(color: color, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
