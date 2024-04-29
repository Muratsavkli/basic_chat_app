class Message{
  final String sender;
  final String message;

  Message({required this.sender, required this.message});

  Map<String, dynamic> toMap() => {
    'sender': sender,
    'message': message,
  };
}