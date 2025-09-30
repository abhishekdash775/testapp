import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/messages/presentation/widget/request_list_widget.dart';
import 'package:testapp/features/messages/presentation/widget/searchbar_status_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F6F1),
        leading: Icon(LucideIcons.chevronLeft),
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
          // ChatListWidget(),

          //<------------------------Chat List--------------->
          //<------------------------Request List--------------->
          RequestListWidget(),

          //<------------------------Request List--------------->
        ],
      ),
      //<--------------------------------- Body -------------------------->
    );
  }
}
