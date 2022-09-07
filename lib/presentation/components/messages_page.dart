import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/contact.dart';
import 'package:whatsapp_clone/presentation/components/conversation.dart';
import 'package:whatsapp_clone/presentation/components/conversation_list_tile.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Contact> contactList = [
      Contact(
        id: 0,
        profileAvatar: "https://picsum.photos/id/237/200/300",
        name: "Jp",
      ),
      Contact(
        id: 0,
        profileAvatar: "https://picsum.photos/id/237/200/300",
        name: "Eliza",
      ),
      Contact(
        id: 0,
        profileAvatar: "https://picsum.photos/id/237/200/300",
        name: "Elliezer",
      ),
      Contact(
        id: 0,
        profileAvatar: "https://picsum.photos/id/237/200/300",
        name: "Eliu",
      ),
    ];
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ContactConversation(contact: contactList[index]),
              ));
            },
            child: Conversation(
              contact: contactList[index],
            ),
          );
        },
      ),
    );
  }
}
