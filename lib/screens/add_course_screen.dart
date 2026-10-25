import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/screen_background.dart';

class AddCourseScreen extends StatelessWidget {
  const AddCourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Course')),
      drawer: const AppDrawer(),
      body: ScreenBackground(
        image: 'assets/images/bg_add.jpg',
        child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset('assets/images/study.png', height: 120),
              const SizedBox(height: 20),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Course name',
                  prefixIcon: Icon(Icons.book),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              const TextField(
                decoration: InputDecoration(
                  labelText: 'Course code',
                  prefixIcon: Icon(Icons.tag),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Required attendance (%)',
                  prefixIcon: Icon(Icons.percent),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),

              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Planned total classes',
                  prefixIcon: Icon(Icons.event_note),
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {}, // does nothing yet
                  icon: const Icon(Icons.save),
                  label: const Text('Save Course'),
                ),
              ),

              const SizedBox(height: 20),

              // Tip container
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xFFE3F2FD),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.lightbulb, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        'Tip: most universities require 75% attendance. '
                        '"Planned total classes" is how many classes this course will hold in the semester.',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
