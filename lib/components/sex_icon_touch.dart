// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SexIconToTouch extends StatelessWidget {
  final IconData icon;
  final void Function()? onTap;
  final Color? color;

  SexIconToTouch({super.key, required this.icon, required this.onTap, this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child:
            Icon(icon, size: 50, color: color ?? Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
