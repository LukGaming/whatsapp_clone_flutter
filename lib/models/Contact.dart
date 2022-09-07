class Contact {
  late int id;
  late String profileAvatar;
  late String name;
  Contact({required this.id, required this.profileAvatar, required this.name});
  Contact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profileAvatar = json['profile-avatar'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['profile-avatar'] = this.profileAvatar;
    data['name'] = this.name;
    return data;
  }
}
