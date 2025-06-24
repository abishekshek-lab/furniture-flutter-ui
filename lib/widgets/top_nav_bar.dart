import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget implements PreferredSizeWidget {
  const TopNavBar({super.key});

  void _navigate(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < 600) {
      // Mobile View
      return AppBar(
        title: const Text('PARANORA'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
        
          IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
        ],
      );
    } else {
      // Tablet/Desktop View
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        color: Colors.white,
        child: Row(
          children: [
            // Logo / Brand
            const Text(
              'PARANORA',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Spacer(),

            // Navigation Links (Wrap with flexible layout)
            Flexible(
              flex: 3,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _navItem(context, 'Latest Products', '/latest'),
                    _navItem(context, 'Our Collection', '/collection'),
                    _navItem(context, 'About us', '/about'),
                    _navItem(context, 'Customer Service', '/service'),
                    _navItem(context, 'Trending', '/trending'),
                  ],
                ),
              ),
            ),

            const Spacer(),

            // Icons
            Row(
              children: [
                IconButton(icon: const Icon(Icons.search), onPressed: () {}),
                IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
                IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
              ],
            ),
          ],
        ),
      );
    }
  }

  Widget _navItem(BuildContext context, String title, String routeName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: () => _navigate(context, routeName),
        child: Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
