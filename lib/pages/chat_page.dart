// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors

import 'package:basic_chat_app/components/chat_buble.dart';
import 'package:basic_chat_app/components/my_textfield.dart';
import 'package:basic_chat_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

import '../components/my_drawer.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _messageController = TextEditingController();
  final ChatService _chatService = ChatService();

  //temporary message list to display
  List<String> messages = [];

  void sendMessage() {
    setState(
      () {
        if (_messageController.text.isNotEmpty) {
          //add message to temporary list,
          //TODO: this will be replaced with the actual message list from the server
          messages.insert(0, _messageController.text);

          //TODO: send message to the server wil be implemented here, for now we will display the message in the list
          //_chatService.sendMessage('test', _messageController.text);

          _messageController.clear();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        
        title: Text('Chat Page'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            //display messages
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: ChatBubble(
                      message: messages[index],

                      //TODO: check if the message is from the current user or from the chat bot
                      isMe: true,
                    ),
                  );
                },
              ),
            ),

            //input field
            Row(
              children: [
                Expanded(
                  child: MyTextField(
                    controller: _messageController,
                    hintText: 'Enter your message',
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: sendMessage,
                    icon: Icon(Icons.send, color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
