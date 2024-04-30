// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basic_chat_app/constants/app_constants.dart';
import 'package:flutter/material.dart';

class MyBaseContainerWithText extends StatelessWidget {
  final String text;

  const MyBaseContainerWithText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      margin: const EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConstants.ultraSmallRadius),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.grey[600],
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
