import 'package:flutter/material.dart';
import '../app_colors.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Course Detail')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mobile App Development',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Text(
                'CSC303  •  Required: 75%',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 20),

              // Big percentage circle
              Center(
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.green, width: 10),
                  ),
                  child: const Center(
                    child: Text(
                      '90%',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Three stat boxes
              const Row(
                children: [
                  _StatBox(value: '18', label: 'Attended'),
                  _StatBox(value: '20', label: 'Held'),
                  _StatBox(value: '2', label: 'Missed'),
                ],
              ),
              const SizedBox(height: 16),

              // Safe-bunk message
              const Card(
                color: Color(0xFFE8F5E9),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: AppColors.green, size: 36),
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          'You can still miss 4 classes and stay above 75%.',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // What-if simulator (look only)
              const Text(
                'What-if simulator',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('If I miss next'),
                          Row(
                            children: [
                              Icon(Icons.remove_circle_outline),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Icon(Icons.add_circle_outline),
                            ],
                          ),
                          Text('classes'),
                        ],
                      ),
                      Divider(),
                      Text(
                        'Attendance would become 78%',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Recent classes
              const Text(
                'Recent classes',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.check_circle, color: AppColors.green),
                      title: Text('Monday, 6 Oct'),
                      trailing: Text('Present'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cancel, color: AppColors.red),
                      title: Text('Wednesday, 8 Oct'),
                      trailing: Text('Absent'),
                    ),
                    ListTile(
                      leading: Icon(Icons.block, color: Colors.grey),
                      title: Text('Friday, 10 Oct'),
                      trailing: Text('Cancelled'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String value;
  final String label;

  const _StatBox({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Column(
            children: [
              Text(
                value,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(label, style: const TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
