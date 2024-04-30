// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:basic_chat_app/constants/app_constants.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding),
        child:
            Icon(icon, size: AppConstants.defaultIcon, color: color ?? Theme.of(context).colorScheme.primary),
      ),
    );
  }
}
