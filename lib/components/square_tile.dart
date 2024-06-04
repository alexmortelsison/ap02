import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final void Function()? onTap;
  final String imagePath;
  const SquareTile({
    super.key,
    required this.onTap,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset(
            imagePath,
            height: 40,
          ),
        ),
      ),
    );
  }
}
