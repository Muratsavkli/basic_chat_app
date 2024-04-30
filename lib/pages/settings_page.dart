// ignore_for_file: prefer_const_constructors

import 'package:basic_chat_app/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themes/theme_provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(AppConstants.smallRadius),
        ),
        margin: EdgeInsets.all(AppConstants.largePadding),
        padding: EdgeInsets.all(AppConstants.smallPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Dark Mode'),
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context).isDarkMode,
              onChanged: (value) {
                setState(
                  () {
                    Provider.of<ThemeProvider>(context, listen: false).isDarkMode = value;
                    Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
