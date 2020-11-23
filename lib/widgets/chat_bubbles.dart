import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

pickActivityBubble(CustomClipper clipper, BuildContext context, String text) =>
    ChatBubble(
      clipper: clipper,
      backGroundColor: Color(0xffE7E7ED),
      margin: EdgeInsets.only(top: 5),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.45,
        ),
        child: Text(text),
      ),
    );
