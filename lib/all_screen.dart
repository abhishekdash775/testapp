import 'package:flutter/material.dart';
import 'package:testapp/features/activity_statics/presentation/screen/my_activity.dart';
import 'package:testapp/features/messages/presentation/screen/chat_screen.dart';
import 'package:testapp/features/messages/presentation/screen/messages_screen.dart';
import 'package:testapp/features/womenty_screens/women_about_screen.dart';

class AllScreen extends StatelessWidget {
  const AllScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is all screen")),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            ListTile(
              title: Text("chat screen"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatScreen()),
                );
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("WomenSelf"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WomenAboutScreen()),
                );
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("Help provided component"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyActivity()),
                );
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("Message screen chatlist"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesScreen(choice: ScreenChoice.chatlist),
                  ),
                );
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("Message screen chatlist empty"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesScreen(choice: ScreenChoice.chatlistempty),
                  ),
                );
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("Message screen request list"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesScreen(choice: ScreenChoice.requestlist),
                  ),
                );
              },
            ),
            SizedBox(height: 15),
            ListTile(
              title: Text("Message screen request list empty"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesScreen(choice: ScreenChoice.requestlistempty),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
