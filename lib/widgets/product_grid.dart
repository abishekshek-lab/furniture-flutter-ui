// import 'package:flutter/material.dart';

// class ProductGrid extends StatefulWidget {
//   const ProductGrid({super.key});

//   @override
//   State<ProductGrid> createState() => _ProductGridState();
// }

// class _ProductGridState extends State<ProductGrid> {
//   final List<Map<String, String>> allProducts = [
//     {"title": "EDWIN DINING CHAIR", "price": "£595", "image": "assets/images/edwin_chair.png"},
//     {"title": "ARIA DINING CHAIR", "price": "£840", "image": "assets/images/aria_chair.png"},
//     {"title": "SYDNEY ARMCHAIR", "price": "£1795", "image": "assets/images/sydney_armchair.png"},
//     {"title": "OXLEY COFFEE TABLE", "price": "£822", "image": "assets/images/oxley_table.png"},
//     {"title": "LARA ARMCHAIR", "price": "£734", "image": "assets/images/lara_armchair.png"},
//     {"title": "NOELLE MODULAR CURVED", "price": "£846", "image": "assets/images/noelle_modular.png"},
//     {"title": "GARRET ARMCHAIR", "price": "£1120", "image": "assets/images/garret_armchair.png"},
//     {"title": "THEODORE ARMCHAIR", "price": "£404", "image": "assets/images/theodore_armchair.png"},
//     {"title": "LUCY DINING CHAIR", "price": "£595", "image": "assets/images/lucy_chair.png"},
//     {"title": "MILO DINING CHAIR", "price": "£595", "image": "assets/images/milo_chair.png"},
//     {"title": "JASPER DINING CHAIR", "price": "£595", "image": "assets/images/jasper_chair.png"},
//     {"title": "HAYDEN DINING CHAIR", "price": "£595", "image": "assets/images/hayden_chair.png"},
//   ];

//   String searchQuery = '';
//   String selectedCategory = 'Category';
//   String selectedColor = 'Color';
//   String selectedPrice = 'Price';

//   @override
//   Widget build(BuildContext context) {
//     final filteredProducts = allProducts
//         .where((product) =>
//             product['title']!.toLowerCase().contains(searchQuery.toLowerCase()))
//         .toList();

//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Search Bar - Long field on top
//           TextField(
//             decoration: InputDecoration(
//   hintText: 'Search Product',
//   suffixIcon: const Icon(Icons.search), // ✅ Now it's on the right
//   border: OutlineInputBorder(
//     borderRadius: BorderRadius.circular(8),
//   ),
//   filled: true,
//   fillColor: Colors.grey[100],
// ),

//             onChanged: (value) {
//               setState(() {
//                 searchQuery = value;
//               });
//             },
//           ),
//           const SizedBox(height: 12),

//           // Filters positioned directly below search bar, packed closely
//           SizedBox(
//             width: 600,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               spacing: 15.5,
//               children: [
//                 Expanded(
//                   child: _buildDropdown(
//                     value: selectedCategory,
//                     items: ['Category', 'Chairs', 'Tables', 'Lamps'],
//                     onChanged: (value) {
//                       setState(() {
//                         selectedCategory = value!;
//                       });
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   child: _buildDropdown(
//                     value: selectedColor,
//                     items: ['Color', 'Brown', 'Black', 'White'],
//                     onChanged: (value) {
//                       setState(() {
//                         selectedColor = value!;
//                       });
//                     },
//                   ),
//                 ),
//                 Expanded(
//                   child: _buildDropdown(
//                     value: selectedPrice,
//                     items: ['Price', 'Low to High', 'High to Low'],
//                     onChanged: (value) {
//                       setState(() {
//                         selectedPrice = value!;
//                       });
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),

//           // Sort-by label
//           Align(
//             alignment: Alignment.centerRight,
//             child: Text(
//               '56 Items Sort By: Best Sellers',
//               style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 color: Colors.grey.shade600,
//               ),
//             ),
//           ),
//           const SizedBox(height: 20),

//           // Grid view with images
//           LayoutBuilder(
//             builder: (context, constraints) {
//               int crossAxisCount = constraints.maxWidth < 600
//                   ? 2
//                   : constraints.maxWidth < 900
//                       ? 3
//                       : 4;

//               return GridView.builder(
//                 itemCount: filteredProducts.length,
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: crossAxisCount,
//                   crossAxisSpacing: 16,
//                   mainAxisSpacing: 16,
//                   childAspectRatio: 0.65,
//                 ),
//                 itemBuilder: (context, index) {
//                   return ProductTile(
//                     title: filteredProducts[index]['title']!,
//                     price: filteredProducts[index]['price']!,
//                     imagePath: filteredProducts[index]['image']!, // Pass image path
//                   );
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }

//  Widget _buildDropdown({
//   required String value,
//   required List<String> items,
//   required Function(String?) onChanged,
// }) {
//   return Container(
//     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
//     // decoration: BoxDecoration(
//     //   border: Border.all(color: Colors.black, width: 1),
//     //   borderRadius: BorderRadius.circular(8),
//     // ),
//     child: DropdownButton<String>(
//       value: value,
//       icon: const Icon(Icons.keyboard_arrow_down),
//       underline: SizedBox(), // Removes default underline
//       isExpanded: true, // Optional: fills parent width
//       items: items
//           .map((item) => DropdownMenuItem(value: item, child: Text(item)))
//           .toList(),
//       onChanged: onChanged,
//     ),
//   );
// }
// }

// class ProductTile extends StatelessWidget {
//   final String title;
//   final String price;
//   final String imagePath;

//   const ProductTile({super.key, required this.title, required this.price, required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           AspectRatio(
//             aspectRatio: 1,
//             child: ClipRRect(
//               borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
//               child: Image.asset(imagePath, fit: BoxFit.cover), // Display product image
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
//                 ),
//                 const SizedBox(height: 4),
//                 Text(
//                   '$price Regular',
//                   style: const TextStyle(color: Colors.grey, fontSize: 12),
//                 ),
//                 Text(
//                   '£534 Member',
//                   style: TextStyle(color: Colors.brown.shade400, fontSize: 12),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  final List<Map<String, String>> allProducts = [
    {"title": "EDWIN DINING CHAIR", "price": "£595", "image": "assets/images/edwin_chair.png"},
    {"title": "ARIA DINING CHAIR", "price": "£840", "image": "assets/images/aria_chair.png"},
    {"title": "SYDNEY ARMCHAIR", "price": "£1795", "image": "assets/images/sydney_armchair.png"},
    {"title": "OXLEY COFFEE TABLE", "price": "£822", "image": "assets/images/oxley_table.png"},
    {"title": "LARA ARMCHAIR", "price": "£734", "image": "assets/images/lara_armchair.png"},
    {"title": "NOELLE MODULAR CURVED", "price": "£846", "image": "assets/images/noelle_modular.png"},
    {"title": "GARRET ARMCHAIR", "price": "£1120", "image": "assets/images/garret_armchair.png"},
    {"title": "THEODORE ARMCHAIR", "price": "£404", "image": "assets/images/theodore_armchair.png"},
    {"title": "LUCY DINING CHAIR", "price": "£595", "image": "assets/images/lucy_chair.png"},
    {"title": "MILO DINING CHAIR", "price": "£595", "image": "assets/images/milo_chair.png"},
    {"title": "JASPER DINING CHAIR", "price": "£595", "image": "assets/images/jasper_chair.png"},
    {"title": "HAYDEN DINING CHAIR", "price": "£595", "image": "assets/images/hayden_chair.png"},
  ];

  String searchQuery = '';
  String selectedCategory = 'Category';
  String selectedColor = 'Color';
  String selectedPrice = 'Price';

  @override
  Widget build(BuildContext context) {
    final filteredProducts = allProducts
        .where((product) =>
            product['title']!.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Search Bar
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Product',
                suffixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                filled: true,
                fillColor: Colors.grey[100],
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          const SizedBox(height: 12),

          // Filter dropdowns
          SizedBox(
            width: 600,
            child: Row(
              children: [
                Expanded(
                  child: _buildStyledDropdown(
                    value: selectedCategory,
                    items: ['Category', 'Chairs', 'Tables', 'Lamps'],
                    onChanged: (value) {
                      setState(() {
                        selectedCategory = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _buildStyledDropdown(
                    value: selectedColor,
                    items: ['Color', 'Brown', 'Black', 'White'],
                    onChanged: (value) {
                      setState(() {
                        selectedColor = value!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _buildStyledDropdown(
                    value: selectedPrice,
                    items: ['Price', 'Low to High', 'High to Low'],
                    onChanged: (value) {
                      setState(() {
                        selectedPrice = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${filteredProducts.length} Items • Sort By: Best Sellers',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          const SizedBox(height: 20),

          // Product Grid
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth < 600
                  ? 2
                  : constraints.maxWidth < 900
                      ? 3
                      : 4;

              return GridView.builder(
                itemCount: filteredProducts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return ProductTile(
                    title: filteredProducts[index]['title']!,
                    price: filteredProducts[index]['price']!,
                    imagePath: filteredProducts[index]['image']!,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStyledDropdown({
    required String value,
    required List<String> items,
    required Function(String?) onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DropdownButton<String>(
        value: value,
        icon: const Icon(Icons.keyboard_arrow_down),
        underline: const SizedBox(),
        isExpanded: true,
        style: const TextStyle(color: Colors.black),
        dropdownColor: Colors.white,
        borderRadius: BorderRadius.circular(12),
        items: items
            .map((item) => DropdownMenuItem(value: item, child: Text(item)))
            .toList(),
        onChanged: onChanged,
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const ProductTile({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13)),
                const SizedBox(height: 4),
                Text('$price Regular', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                Text('£534 Member', style: TextStyle(color: Colors.brown.shade400, fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
