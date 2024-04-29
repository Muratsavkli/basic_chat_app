import 'package:basic_chat_app/models/message.dart';

class ChatService{

  Future<void> sendMessage(String sender, String message) async {
    
    Message newMessage = Message(sender: sender, message: message);
  }
}