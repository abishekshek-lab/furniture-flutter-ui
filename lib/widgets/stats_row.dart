import 'package:flutter/material.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          children: const [
            StatTile(count: '25+', label: 'Items', category: 'Living Room'),
            StatTile(count: '10+', label: 'Items', category: 'Outdoor Furniture'),
            StatTile(count: '15+', label: 'Items', category: 'Dining Room'),
            StatTile(count: '18+', label: 'Items', category: 'Bedroom Furniture'),
            StatTile(count: '12+', label: 'Items', category: 'Office Furniture'),
          ],
        ),
      ),
    );
  }
}

class StatTile extends StatelessWidget {
  final String count;
  final String label;
  final String category;

  const StatTile({
    super.key,
    required this.count,
    required this.label,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width < 400 ? 140 : 160,
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                count,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            category,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
