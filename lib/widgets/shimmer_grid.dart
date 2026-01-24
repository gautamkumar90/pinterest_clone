import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShimmerGrid extends StatelessWidget {
  const ShimmerGrid({super.key});

  static final _heights = [
    160.0,
    220.0,
    180.0,
    260.0,
    140.0,
    240.0,
    200.0,
    190.0,
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      padding: const EdgeInsets.all(12),
      itemCount: _heights.length,
      itemBuilder: (_, index) {
        return Shimmer(
          duration: const Duration(milliseconds: 200),
          interval: const Duration(milliseconds: 200),
          child: Container(
            height: _heights[index],
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        );
      },
    );
  }
}
