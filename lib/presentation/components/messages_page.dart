import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 18,
                  child: Image.network(
                    "https://natuurwetenschappen-diligentia.nl/wp-content/uploads/2021/01/avatar-Tonny-Regensburg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                title: const Text(
                  "João Paulo",
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
        },
      ),
    );
  }
}
