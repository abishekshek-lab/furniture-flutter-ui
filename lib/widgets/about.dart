import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title Section
          Text(
            "A Little About Us",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Description Text
          Text(
            "Taking cues from mid-century designs...",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          ),
          const SizedBox(height: 24),

          // Responsive Wrapping Feature Cards
          LayoutBuilder(
            builder: (context, constraints) {
              final isNarrow = constraints.maxWidth < 600;
              final cardWidth = isNarrow ? constraints.maxWidth : 280.0;
              return Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  _buildFeatureContainer(
                    title: "Thoughtful Design",
                    description:
                        "Clever, comfy furniture that you're proud to show off but not precious about using everyday.",
                    icon: Icons.weekend,
                    width: cardWidth,
                  ),
                  _buildFeatureContainer(
                    title: "Everyday Value",
                    description:
                        "Our direct-to-consumer model cuts out the middlemen, hidden costs and showroom expenses that charge you extra.",
                    icon: Icons.local_shipping,
                    width: cardWidth,
                  ),
                  _buildFeatureContainer(
                    title: "Effortless Experiences",
                    description:
                        "Fast and flexible delivery, tool-free assembly, and a 120-night risk-free trial.",
                    icon: Icons.access_time,
                    width: cardWidth,
                  ),
                  _buildFeatureContainer(
                    title: "Designed With The World In Mind",
                    description:
                        "Ethically made and designed to last. Every purchase helps save koalas.",
                    icon: Icons.public,
                    width: cardWidth,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureContainer({
    required String title,
    required String description,
    required IconData icon,
    required double width,
  }) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 4)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 40, color: Colors.brown),
          const SizedBox(height: 12),
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(description, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
        ],
      ),
    );
  }
}