import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/messages/data/chating_data.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatingData> chatingData = [
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: true,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: false,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: true,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: false,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: true,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: true,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: false,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: true,
      time: "9:30 am",
    ),
    ChatingData(
      message: "Hey! How are you doing today? 🙂",
      isSender: false,
      time: "9:30 am",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //<------------------- App Bar ------------------------------------------>
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xFFF9F6F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24),
            bottomRight: Radius.circular(24),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(LucideIcons.chevronLeft),
        ),
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/g1.jpg",
                height: 48,
                width: 48,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Column(
              children: [
                Text(
                  "Grace",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Color(0xFF5C7F71),
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Online",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFF5C7F71),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(LucideIcons.ellipsisVertical),
          ),
        ],
      ),
      //<------------------- App Bar ------------------------------------------>
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            //<-------------------- Chating Interface --------------------------->
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  final chat = chatingData[index];
                  return ChatBubble(
                    message: chat.message,
                    isSender: chat.isSender,
                    time: chat.time,
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 18),
                itemCount: chatingData.length,
              ),
            ),

            //<-------------------- Chating Interface --------------------------->

            //<-------------------- Bottom Message Sender Interface --------------------------->
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 20,
                top: 15,
                bottom: 8,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 52,
                    width: 307,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(LucideIcons.smile),

                        hintText: "Enter yor message...",
                        helperStyle: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFFCED9D4),
                        ),
                        contentPadding: EdgeInsets.all(16),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xFFCED9D4),
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 8),

                  Container(
                    padding: const EdgeInsets.all(16),
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFF5C7F71),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      LucideIcons.sendHorizontal,
                      color: Color(0xFFFFFFFF),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),

            //<-------------------- Bottom Message Sender Interface --------------------------->
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;
  final String time;
  const ChatBubble({
    super.key,
    required this.message,
    required this.isSender,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isSender
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isSender ? Color(0x1AD98966) : const Color(0x33CED9D4),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: isSender ? Radius.circular(0) : Radius.circular(12),
              bottomRight: isSender ? Radius.circular(12) : Radius.circular(0),
            ),
          ),
          child: Column(
            crossAxisAlignment: isSender
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: [
              Text(
                message,
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF374C44),
                ),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: isSender
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.end,
                children: [
                  Text(
                    time,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9DB2AA),
                    ),
                  ),
                  SizedBox(width: 5),
                  if (!isSender)
                    Image.asset(
                      "assets/images/doubletick.png",
                      height: 12,
                      width: 12,
                    ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(),
      ],
    );
  }
}
