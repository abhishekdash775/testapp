import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PersonalDetailsComponent extends StatelessWidget {
  const PersonalDetailsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return //<--------------------------- Personl detail Component  -------------------------->
    Row(
      children: [
        //<--------------------- Profile Image -------------------------------------------------------->
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            "assets/images/g1.jpg",
            height: 64,
            width: 64,
            fit: BoxFit.cover,
          ),
        ),
        //<------------------------ Profile Image --------------------------------------------->
        SizedBox(width: 12),

        //<--------------------- Personal detail component ----------------------------------->
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Elsa, ",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF374C44),
                    ),
                  ),
                  TextSpan(
                    text: "28 yrs old",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF9DB2AA),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Mom of a toddler (1–3 years).",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 12,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Color(0xFF374C44),
              ),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(LucideIcons.mapPin, size: 16, color: Color(0xFF7E7E7E)),
                SizedBox(width: 4),
                Text(
                  "2.1 kms away",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF374C44),
                  ),
                ),
              ],
            ),
          ],
        ),
        //<--------------------- Personal detail component ----------------------------------->
      ],
    );
  }
}
