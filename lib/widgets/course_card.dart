import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final String name;
  final String code;
  final int attended;
  final int held;
  final double percentage;
  final String message;
  final Color statusColor;

  const CourseCard({
    super.key,
    required this.name,
    required this.code,
    required this.attended,
    required this.held,
    required this.percentage,
    required this.message,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Coloured circle with percentage
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: statusColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${percentage.toStringAsFixed(0)}%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),

            // Course info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(code, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 6),
                  Text('Attended $attended of $held classes'),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(Icons.info_outline, size: 16, color: statusColor),
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          message,
                          style: TextStyle(
                            color: statusColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
