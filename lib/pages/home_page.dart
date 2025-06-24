import 'package:flutter/material.dart';
import '../widgets/top_nav_bar.dart';
import '../widgets/stats_row.dart';
import '../widgets/top_banner.dart';
import '../widgets/feature_banner.dart';
import '../widgets/product_grid.dart';
import '../widgets/pagination_controls.dart';
import '../widgets/about.dart';
import '../widgets/shop_the_look.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopNavBar(),
            TopBanner(),
            StatsRow(),
            FeatureBanner(),
            ProductGrid(),
            PaginationControls(),
            AboutSection(),
            ShopTheLook(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
