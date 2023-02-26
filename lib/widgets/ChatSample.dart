import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';

class ChatSample extends StatelessWidget {
  // const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //lack of something(???)
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.RECEIVE),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                "Hi, Developer, How are you today?",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
        // SizedBox(height: 20),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.SEND),
            child: Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 20),
              decoration: BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child: Text(
                "Hi, Programmer, i am fine and well, thanks for asking and what about you? i hope you will be also fine.",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
