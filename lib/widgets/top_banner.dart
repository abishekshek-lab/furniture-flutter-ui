import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title block
              Expanded(
                flex: 2,
                child: const Text(
                  'Stylish\nAnd Durable Furniture\nCollection',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              // Description block
              Expanded(
                flex: 3,
                child: const Text(
                  'Discover our Stylish and Durable Furniture Collection, designed to elevate your space with elegance and lasting quality. Perfect for any room, these pieces blend modern design with exceptional functionality and comfort.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    height: 1.6,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
