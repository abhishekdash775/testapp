import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class BottomButtonComponent extends StatelessWidget {
  const BottomButtonComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return
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
          child: Icon(LucideIcons.eye, size: 20, color: Color(0xFFD98966)),
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
    );

    //<--------------------------- Button Component  -------------------------->
  }
}
