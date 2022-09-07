import 'package:flutter/material.dart';
import 'package:whatsapp_clone/mock/lorem.dart';
import 'package:whatsapp_clone/models/contact.dart';

class ContactConversation extends StatelessWidget {
  final Contact contact;
  const ContactConversation({required this.contact, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(contact.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Text(lorem_text),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Text(lorem_text),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
