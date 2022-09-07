import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/contact.dart';

class Conversation extends StatelessWidget {
  final Contact contact;
  const Conversation({
    required this.contact,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 18,
            child: Image.network(
              contact.profileAvatar,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(
            contact.name,
          ),
          subtitle: const Text(
            "acho que vou comecar pelas coisas mais simples",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Positioned(
          top: 15,
          right: 10,
          child: Text(
            "12:15",
            style: TextStyle(fontSize: 12),
          ),
        )
      ],
    );
  }
}
