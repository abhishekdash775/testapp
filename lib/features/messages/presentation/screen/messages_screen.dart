import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/messages/data/chat_list_data.dart';
import 'package:testapp/features/messages/data/request_list_data.dart';
import 'package:testapp/features/messages/presentation/widget/chat_list_widget.dart';
import 'package:testapp/features/messages/presentation/widget/request_list_widget.dart';
import 'package:testapp/features/messages/presentation/widget/searchbar_status_widget.dart';

enum ScreenChoice { chatlist, requestlist, chatlistempty, requestlistempty }

class MessagesScreen extends StatelessWidget {
  final ScreenChoice choice;
  const MessagesScreen({super.key, required this.choice});

  @override
  Widget build(BuildContext context) {
    final List<RequestListData> reqData = [
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
      RequestListData(
        imagePath: "assets/images/g1.jpg",
        personName: "Oliver",
        reqNote: "Sent you a message request",
      ),
    ];

    final List<ChatListData> chatData = [
      ChatListData(
        "assets/images/g1.jpg",
        "Grace",
        "Hey! How are you doin...",
        "Now",
        1,
      ),
      ChatListData(
        "assets/images/g2.png",
        "Ethan",
        "What's up? Any update...",
        "Now",
        6,
      ),
      ChatListData(
        "assets/images/g3.png",
        "Oliver",
        "Hello! What's new with...",
        "Today",
        2,
      ),
      ChatListData("assets/images/g4.png", "Noah", "Hello!", "Now", 8),
      ChatListData(
        "assets/images/g5.png",
        "Isabella",
        "Hey there! What are you up to?",
        "Now",
        9,
      ),
      ChatListData(
        "assets/images/g2.png",
        "Ava",
        "Greetings! How have yo...",
        "Now",
        5,
      ),
      ChatListData(
        "assets/images/g1.jpg",
        "Liam",
        "Hey! Any exciting plan...",
        "Now",
        4,
      ),
      ChatListData(
        "assets/images/g1.jpg",
        "Grace",
        "Hey! How are you doin...",
        "Now",
        1,
      ),
      ChatListData(
        "assets/images/g2.png",
        "Ethan",
        "What's up? Any update...",
        "Now",
        6,
      ),
      ChatListData(
        "assets/images/g3.png",
        "Oliver",
        "Hello! What's new with...",
        "Today",
        2,
      ),
      ChatListData("assets/images/g4.png", "Noah", "Hello!", "Now", 8),
      ChatListData(
        "assets/images/g5.png",
        "Isabella",
        "Hey there! What are you up to?",
        "Now",
        9,
      ),
      ChatListData(
        "assets/images/g2.png",
        "Ava",
        "Greetings! How have yo...",
        "Now",
        5,
      ),
      ChatListData(
        "assets/images/g1.jpg",
        "Liam",
        "Hey! Any exciting plan...",
        "Now",
        4,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F6F1),
        leading: IconButton(
          onPressed: () {
            navigator!.pop(context);
          },
          icon: Icon(LucideIcons.chevronLeft),
        ),
        title: Text(
          "Messages",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF374C44),
          ),
        ),
        centerTitle: true,
      ),
      //<--------------------------------- Body -------------------------->
      body: Column(
        children: [
          SearchbarStatusWidget(), SizedBox(height: 12),
          //<-------------------------Sized Box-------------->
          SizedBox(height: 20),
          //<-------------------------Sized Box-------------->
          //<------------------------Chat List--------------->
          if (choice == ScreenChoice.chatlist)
            ChatListWidget(chatData: chatData),
          if (choice == ScreenChoice.chatlistempty)
            ChatListWidget(chatData: []),

          //<------------------------Chat List--------------->
          //<------------------------Request List--------------->
          if (choice == ScreenChoice.requestlist)
            RequestListWidget(reqData: reqData),
          if (choice == ScreenChoice.requestlistempty)
            RequestListWidget(reqData: []),

          //<------------------------Request List--------------->
        ],
      ),
      //<--------------------------------- Body -------------------------->
    );
  }
}
