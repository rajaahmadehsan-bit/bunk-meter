import 'package:flutter/material.dart';
import '../app_colors.dart';

class DeadlinesScreen extends StatelessWidget {
  const DeadlinesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Deadlines')),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              _DeadlineCard(
                icon: Icons.assignment,
                title: 'Assignment 2: Project UI',
                course: 'Mobile App Development',
                due: 'In 2 days',
                color: AppColors.red,
              ),
              _DeadlineCard(
                icon: Icons.quiz,
                title: 'Quiz 1: SQL Basics',
                course: 'Database Systems',
                due: 'In 5 days',
                color: AppColors.amber,
              ),
              _DeadlineCard(
                icon: Icons.menu_book,
                title: 'Midterm Exam',
                course: 'Data Structures',
                due: 'In 12 days',
                color: AppColors.green,
              ),
              _DeadlineCard(
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
