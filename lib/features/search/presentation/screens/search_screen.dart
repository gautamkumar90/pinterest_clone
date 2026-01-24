import 'package:flutter/material.dart';
import 'package:pinterest_clone/features/search/presentation/widgets/search_bar.dart';
import 'package:pinterest_clone/features/search/presentation/widgets/search_hero_carousel.dart';
import 'package:pinterest_clone/features/search/presentation/widgets/ideas_grid.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: const [
            SliverToBoxAdapter(child: SearchTopBar()),
            SliverToBoxAdapter(child: SizedBox(height: 12)),
            SliverToBoxAdapter(child: SearchHeroCarousel()),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
              child: SectionTitle(title: "Ideas you might like"),
            ),
            IdeasGrid(),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
