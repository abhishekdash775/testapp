import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/messages/data/request_list_data.dart';

class RequestListWidget extends StatelessWidget {
  const RequestListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<RequestListData> reqData = [];
    // final List<RequestListData> reqData = [
    //   RequestListData(
    //     imagePath: "assets/images/g1.jpg",
    //     personName: "Oliver",
    //     reqNote: "Sent you a message request",
    //   ),
    //   RequestListData(
    //     imagePath: "assets/images/g1.jpg",
    //     personName: "Oliver",
    //     reqNote: "Sent you a message request",
    //   ),
    //   RequestListData(
    //     imagePath: "assets/images/g1.jpg",
    //     personName: "Oliver",
    //     reqNote: "Sent you a message request",
    //   ),
    //   RequestListData(
    //     imagePath: "assets/images/g1.jpg",
    //     personName: "Oliver",
    //     reqNote: "Sent you a message request",
    //   ),
    // ];
    if (reqData.isNotEmpty) {
      return Container(
        height: 600,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
          itemBuilder: (context, index) {
            final data = reqData[index];
            return Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(width: 1, color: Color(0xFFCED9D4)),
              ),
              child: Column(
                children: [
                  //<------------------upper part--------------->
                  Row(
                    children: [
                      //<------------------Profile Image--------------->
                      ClipOval(
                        child: Image.asset(
                          data.imagePath,
                          height: 56,
                          width: 56,
                          fit: BoxFit.cover,
                        ),
                      ),
                      //<------------------Profile Image--------------->
                      SizedBox(width: 16),
                      //<------------------Name and request message--------------->
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.personName,
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF5C7F71),
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            data.reqNote,
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF9DB2AA),
                            ),
                          ),
                        ],
                        //<------------------Name and request message--------------->
                      ),
                    ],
                  ),

                  //<------------------upper part--------------->
                  SizedBox(height: 12),
                  //<------------------lower part--------------->

                  //<----------------Reject button----------->
                  Row(
                    children: [
                      SizedBox(
                        height: 40,
                        width: 56,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 18,
                            ),
                            side: const BorderSide(
                              color: Color(0xFFFF2B2B),
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            backgroundColor: const Color(0xFFFFFFFF),
                            foregroundColor: Color(0xFFFF2B2B),
                          ),
                          onPressed: () {},
                          child: const Icon(LucideIcons.x),
                        ),
                      ),

                      //<-----------------Reject Button----------->
                      SizedBox(width: 12),

                      //<----------------Accept Button ------------------->
                      SizedBox(
                        width: 270,
                        height: 40,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 95.5,
                            ),
                            side: const BorderSide(
                              color: Color(0xFF5C7F71),
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            backgroundColor: const Color(0xFFFFFFFF),
                            foregroundColor: const Color(0xFF5C7F71),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(
                                LucideIcons.check,
                                // white icon
                              ),
                              SizedBox(width: 8),

                              Text(
                                "Accept",
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF9DB2AA),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  //<----------------Accept Button ------------------->
                  //<------------------lower part--------------->
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 16);
          },
          itemCount: reqData.length,
        ),
      );
    } else {
      return Container(
        padding: EdgeInsets.only(top: 122.5, left: 57, right: 57),
        child: Column(
          children: [
            Image.asset("assets/images/req.gif", height: 150, width: 150),
            SizedBox(height: 20),
            Text(
              "You’re all caught up!",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF5C7F71),
              ),
            ),
            SizedBox(height: 8),
            Text(
              "No new requests at the moment.",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF5C7F71),
              ),
            ),
          ],
        ),
      );
    }
  }
}
