import 'package:flutter/material.dart';
import 'package:pinterest_clone/widgets/bottom_nav.dart';

class ShellScaffold extends StatelessWidget {
  final Widget child;
  final int index;
  final ValueChanged<int> onTap;

  const ShellScaffold({
    super.key,
    required this.child,
    required this.index,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNav(
        index: index,
        onTap: onTap,
      ),
    );
  }
}