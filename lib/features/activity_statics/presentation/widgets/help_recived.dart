import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/activity_statics/presentation/widgets/profile_details.dart';
import 'package:testapp/features/womenty_screens/widget/profile_details.dart';

class HelpRecived extends StatelessWidget {
  const HelpRecived({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(width: 1.5, color: Color(0xFFCED9D4)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //<--------------------------- Need Help Component  -------------------------->
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Help needed",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF374C44),
                ),
              ),
              Spacer(),
              Icon(LucideIcons.eye, size: 20, color: Color(0xFFD98966)),
            ],
          ),

          //<--------------------------- Need Help Component  -------------------------->
          SizedBox(height: 12),
          //<--------------------------- Tag chip Component  -------------------------->
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: [
              Chip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(color: Color(0xFF5C7F71)),
                ),
                label: const Text(
                  "Childcare",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5C7F71),
                  ),
                ),
              ),
              Chip(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: BorderSide(color: Color(0xFF5C7F71)),
                ),
                label: const Text(
                  "Offer help",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5C7F71),
                  ),
                ),
              ),
            ],
          ),

          //<--------------------------- Tag chip Component  -------------------------->
          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Help given by",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF374C44),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  "View all",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF5C7F71),
                    decorationThickness: 2,
                    fontFamily: "Roboto",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF5C7F71),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 12),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return PersonalDetailsComponent();
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: 20);
            },
            itemCount: 3,
          ),
        ],
      ),
    );
  }
}
