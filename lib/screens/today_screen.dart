import 'package:flutter/material.dart';
import '../app_colors.dart';

class TodayScreen extends StatelessWidget {
  const TodayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Today's Classes")),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              _TodayClassCard(
                  name: 'Mobile App Development', time: '9:00 AM - 10:30 AM'),
              _TodayClassCard(
                  name: 'Database Systems', time: '11:00 AM - 12:30 PM'),
              _TodayClassCard(
                  name: 'Data Structures', time: '2:00 PM - 3:30 PM'),
            ],
          ),
        ),
      ),
    );
  }
}

class _TodayClassCard extends StatelessWidget {
  final String name;
  final String time;

  const _TodayClassCard({required this.name, required this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.access_time, size: 16, color: Colors.grey),
                const SizedBox(width: 4),
                Text(time, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 12),
            const Row(
              children: [
                _MarkButton(
                    icon: Icons.check_circle,
                    label: 'Present',
                    color: AppColors.green),
                _MarkButton(
                    icon: Icons.cancel, label: 'Absent', color: AppColors.red),
                _MarkButton(
                    icon: Icons.block, label: 'Cancelled', color: Colors.grey),
                _MarkButton(
                    icon: Icons.beach_access,
                    label: 'Leave',
                    color: AppColors.amber),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MarkButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _MarkButton({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: color, size: 30),
          const SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12, color: color)),
        ],
      ),
    );
  }
}
