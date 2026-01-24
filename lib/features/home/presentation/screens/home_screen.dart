import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pinterest_clone/features/home/presentation/providers/home_pin_provider.dart';
import 'package:pinterest_clone/widgets/shimmer_grid.dart';
import 'package:pinterest_clone/widgets/home_app_bar.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pins = ref.watch(homePinsProvider);

    return Scaffold(
      appBar: const HomeAppBar(),
      backgroundColor: Colors.black,
      body: pins.when(
        loading: () => const ShimmerGrid(),
        error: (e, _) => Center(child: Text(e.toString())),
        data: (data) => MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          padding: const EdgeInsets.all(12),
          itemCount: data.length,
          itemBuilder: (_, i) {
            final pin = data[i];
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(
                imageUrl: pin.image,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
