import 'package:flutter/material.dart';
import '../app_colors.dart';
import '../widgets/course_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Courses')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Banner image
            Image.asset(
              'assets/images/banner.png',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),

            // Summary row: 3 equal boxes
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  _SummaryBox(count: '2', label: 'Safe', color: AppColors.green),
                  _SummaryBox(
                      count: '1', label: 'Near limit', color: AppColors.amber),
                  _SummaryBox(count: '1', label: 'Danger', color: AppColors.red),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // The same widget used 4 times with different dummy data
            const CourseCard(
              name: 'Mobile App Development',
              code: 'CSC303',
              attended: 18,
              held: 20,
              percentage: 90,
              message: 'Safe: you can miss 4 more classes',
              statusColor: AppColors.green,
            ),
            const CourseCard(
              name: 'Software Engineering',
              code: 'CSC301',
              attended: 22,
              held: 24,
              percentage: 92,
              message: 'Safe: you can miss 5 more classes',
              statusColor: AppColors.green,
            ),
            const CourseCard(
              name: 'Database Systems',
              code: 'CSC305',
              attended: 16,
              held: 20,
              percentage: 80,
              message: 'Careful: you can miss only 1 class',
              statusColor: AppColors.amber,
            ),
            const CourseCard(
              name: 'Data Structures',
              code: 'CSC202',
              attended: 14,
              held: 20,
              percentage: 70,
              message: 'Danger: attend the next 4 classes',
              statusColor: AppColors.red,
            ),
            const SizedBox(height: 80), // space so the button doesn't cover the last card
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // does nothing yet
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),
    );
  }
}

// Small helper widget, used only in this file
class _SummaryBox extends StatelessWidget {
  final String count;
  final String label;
  final Color color;

  const _SummaryBox({
    required this.count,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Column(
            children: [
              Text(
                count,
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold, color: color),
              ),
              Text(label, style: const TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}
