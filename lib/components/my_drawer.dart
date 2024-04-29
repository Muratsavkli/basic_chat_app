// ignore_for_file: prefer_const_constructors

import 'package:basic_chat_app/pages/login_page.dart';
import 'package:flutter/material.dart';

import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.grey[600],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.chat,
                  color: Color.fromARGB(255, 240, 166, 19),
                ),
                title: Text(
                  'Chat',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[600],
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ListTile(
              leading: Icon(
                Icons.restart_alt,
                color: Colors.grey[600],
              ),
              title: Text(
                'Reset Your Friend',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
