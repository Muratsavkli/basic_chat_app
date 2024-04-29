class MessageForApi{
  String message;
  String sender;

  MessageForApi({required this.message, required this.sender});

  factory MessageForApi.fromJson(Map<String, dynamic> json) {
    return MessageForApi(
      message: json['message'],
      sender: json['sender'],
    );
  }

  Map<String, dynamic> toJson() => {
    'message': message,
    'sender': sender,
  };
}