import 'package:basic_chat_app/constants/app_constants.dart';
import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}