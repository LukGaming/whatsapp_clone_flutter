class Message {
  late int message;
  late String body;
  late bool isFile;
  late bool received;
  late int userId;
  Message({
    required this.message,
    required this.body,
    required this.isFile,
    required this.received,
    required this.userId,
  });

  Message.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    body = json['body'];
    isFile = json['isFile'];
    received = json['received'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['body'] = this.body;
    data['isFile'] = this.isFile;
    data['received'] = this.received;
    data['user_id'] = this.userId;
    return data;
  }
}
