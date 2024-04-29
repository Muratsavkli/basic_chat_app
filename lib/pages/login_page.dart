// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basic_chat_app/components/my_button.dart';
import 'package:basic_chat_app/components/sex_icon_touch.dart';
import 'package:basic_chat_app/components/my_textfield.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';
import '../components/my_base_container_with_text.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int userSex = 0;
  int friendSex = 0;

  // nickname's and age text controller
  final TextEditingController _userNicknameController = TextEditingController();
  final TextEditingController _friendNicknameController =
      TextEditingController();
  final TextEditingController _userAgeController = TextEditingController();

  void login() {
    if (_userNicknameController.text.isNotEmpty &&
        _friendNicknameController.text.isNotEmpty &&
        _userAgeController.text.isNotEmpty &&
        userSex != 0 &&
        friendSex != 0) {
      //TODO: create new user and add to db finally navigate to chat page
      
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ChatPage(),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Error"),
            content: const Text("Please fill all the fields"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("OK"),
              )
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Chat Bot App'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.grey,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.message,
              size: 100,
              color: Color.fromARGB(255, 240, 166, 19),
            ),
            const SizedBox(height: 50),
            const Text(
              'Welcome to Basic Chat App',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 25),
            MyTextField(
              hintText: "Enter Your Nick Name",
              controller: _userNicknameController,
            ),
            SizedBox(height: 10),
            MyTextField(
              hintText: "Your age",
              controller: _userAgeController,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyBaseContainerWithText(
                  text: "Select your:",
                ),
                Expanded(
                  child: SexIconToTouch(
                    icon: Icons.male,
                    onTap: () {
                      setState(() {
                        userSex = 2;
                      });
                    },
                    color: userSex == 2 ? Colors.blue[100] : null,
                  ),
                ),
                Expanded(
                  child: SexIconToTouch(
                    icon: Icons.female,
                    onTap: () {
                      setState(() {
                        userSex = 1;
                      });
                    },
                    color: userSex == 1 ? Colors.pink[100] : null,
                  ),
                ),
                Expanded(
                  child: SexIconToTouch(
                    icon: Icons.transgender,
                    onTap: () {
                      setState(() {
                        userSex = 3;
                      });
                    },
                    color: userSex == 3 ? Colors.green[100] : null,
                  ),
                ),
              ],
            ),
            MyTextField(
                hintText: "Friend's Nick Name",
                controller: _friendNicknameController),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MyBaseContainerWithText(
                  text: "Select friend's:",
                ),
                Expanded(
                  child: SexIconToTouch(
                    icon: Icons.male,
                    onTap: () {
                      setState(() {
                        friendSex = 2;
                      });
                    },
                    color: friendSex == 2 ? Colors.blue[100] : null,
                  ),
                ),
                Expanded(
                  child: SexIconToTouch(
                    icon: Icons.female,
                    onTap: () {
                      setState(() {
                        friendSex = 1;
                      });
                    },
                    color: friendSex == 1 ? Colors.pink[100] : null,
                  ),
                ),
                Expanded(
                  child: SexIconToTouch(
                    icon: Icons.transgender,
                    onTap: () {
                      setState(() {
                        friendSex = 3;
                      });
                    },
                    color: friendSex == 3 ? Colors.green[100] : null,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            MyButton(
              text: "Start Chatting",
              onTap: login,
            )
          ],
        ));
  }
}
