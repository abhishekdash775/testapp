import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HelpProvidedComponent extends StatelessWidget {
  const HelpProvidedComponent({super.key});

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
          Text(
            "Help needed",
            style: TextStyle(
              fontFamily: "Roboto",
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Color(0xFF374C44),
            ),
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
          //<--------------------------- Personl detail Component  -------------------------->
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
                      Icon(
                        LucideIcons.mapPin,
                        size: 16,
                        color: Color(0xFF7E7E7E),
                      ),
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
          ),
          SizedBox(height: 12),

          //<--------------------------- Button Component  -------------------------->
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0x0DFFFFFF),
                  border: Border.all(width: 1, color: Color(0xFFD98966)),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Icon(
                  LucideIcons.eye,
                  size: 20,
                  color: Color(0xFFD98966),
                ),
              ),
              SizedBox(width: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 87, vertical: 10.5),

                decoration: BoxDecoration(
                  color: Color(0x0DFFFFFF),
                  border: Border.all(width: 1, color: Color(0xFF5C7F71)),
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      LucideIcons.messageSquareText,
                      size: 20,
                      color: Color(0xFF5C7F71),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Connect",
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5C7F71),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //<--------------------------- Button Component  -------------------------->
        ],
      ),
    );
  }
}
