// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:basic_chat_app/constants/app_constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String text;
  final void Function() onTap;

  MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(AppConstants.extraSmallRadius),
        ),
        padding: const EdgeInsets.all(AppConstants.largePadding),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),      
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}