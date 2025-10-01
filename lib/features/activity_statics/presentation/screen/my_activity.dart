import 'package:flutter/material.dart';
import 'package:testapp/features/activity_statics/presentation/widgets/help_provided_component.dart';
import 'package:testapp/features/activity_statics/presentation/widgets/help_recived.dart';

class MyActivity extends StatelessWidget {
  const MyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Activity")),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              HelpProvidedComponent(),
              SizedBox(height: 20),
              HelpRecived(),
            ],
          ),
        ),
      ),
    );
  }
}
