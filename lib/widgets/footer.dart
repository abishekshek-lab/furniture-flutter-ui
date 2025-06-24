import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return Container(
      color: Colors.grey.shade100,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 48,
        vertical: 36,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top links row
          Wrap(
            spacing: 20,
            runSpacing: 10,
            children: const [
              _FooterLink(text: 'Latest Products'),
              _FooterLink(text: 'Backpack'),
              _FooterLink(text: 'Bags'),
              _FooterLink(text: 'Accessories'),
              _FooterLink(text: 'Collection'),
              _FooterLink(text: 'Gifting'),
              _FooterLink(text: 'Service'),
            ],
          ),
          
          // Add this divider after the top links
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey, // You can adjust the color
            ),
          ),

          const SizedBox(height: 16), // Reduced from 32 to account for divider

          // Rest of your existing code...
         // Main content with description
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 70),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Spacer(flex: 2), // Pushes content to start from center
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Optional: can be TextAlign.right too
          children: [
            const SizedBox(height: 16),
            Text(
              'Paranora Offers Premium Furniture,\n'
              'Blending Timeless Design, Exceptional\n'
              'Quality, And Unmatched Comfort For Every Space.',
              style: TextStyle(
                fontSize: isMobile ? 20 : 24,
                color: Colors.black87,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    ],
  ),
)


        ,const SizedBox(height: 32),

Row(
  children: [
    Spacer(flex: 1), // Push content to start from mid-page
    Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.camera_alt_outlined, size: 24),
          SizedBox(width: 20),
          Icon(Icons.facebook_outlined, size: 24),
          SizedBox(width: 20),
          Icon(Icons.linked_camera_outlined, size: 24),
          SizedBox(width: 20),
          Icon(Icons.play_circle_outline, size: 24),
          SizedBox(width: 20),
          Icon(Icons.push_pin_outlined, size: 24),
        ],
      ),
    ),
  ],
),

            const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey, // You can adjust the color
            ),
          ),

          const SizedBox(height: 32),

          // Bottom row with copyright and links
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '© Paranora. All Rights Reserved.',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Terms & Conditions | Privacy Policy',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                )
              : 
            Row(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    // Left Half - Company Name
    const Expanded(
      flex: 2,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'PARANORA',
          style: TextStyle(
            fontSize: 58,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    ),

    // Right Half - Rights and Terms
    Expanded(
      flex: 2,
      child: Row(
        children: const [
          // Left side of right half
          Expanded(
            child: Text(
              '© Paranora. All Rights Reserved.',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          // Right side of right half
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Terms & Condition| Privacy Policy',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  ],
)

        ],
      ),
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String text;

  const _FooterLink({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        color: Colors.black54,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}